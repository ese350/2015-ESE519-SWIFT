function  [pattern_string  xydirection_string  mode_string  click_string] = tldMouse(varargin,bb)

%global variable definitions
global D;
global rawdata_buffer ; %record the raw data of object's center coordinate and size
global denoise_buffer;  %record data after noise decreasing process
global pattern_buffer;  %record data for pattern recognization
global mode_buffer;  %record data for mode recognization
global click_buffer;  %record data for click
global pre_mouse;       %initial/previous mouse coordinate
global xydirection_string; %indicates x-y plane move direction
global directZ;         %indicates z-axis direction
global mode;  %indicates mode status
global pattern_string;  %indicates the recognized pattern
global mode_string;     %indicates the recognized mode
global click_string;  %indicates click action
global stopxy_flag;  % for xy-plane stop
global stop_flag;    % for both xy_plane and z-axis stop
global mode_flag;    % for swiching mouse and scroll wheel mode
global allstop_flag  %for determing all stop status
global click_flag;   % for detecting click pattern
global p_flag;   %for press pattern
global r_flag;   %for release pattern
global lost_flag; %for lost object
% global move_x;
% global move_y;
move_x = 0;
move_y = 0;
c1 = 0;
c2 = 0;

MAX_BUFFER_SIZE = 4;
MAX_BUFFER_SIZE2 = 3;
MAX_BUFFER_SIZE3 = 10;

LIMIT_X = 2; %limitation for deciding mouse movement in x-y plane
LIMIT_Y = 1;
LIMIT_W = 3; %limitation for deciding the press and release action in Z-direction
LIMIT_H = 2;
LIMIT_SCREENX = [0 1280];
LIMIT_SCREENY = [0 720];

%call mouse operation function
import java.awt.Robot;
import java.awt.event.*;
mouse = Robot;

%initializition
if isempty(pattern_string)
    pattern_string = [];
    stop_flag = 0;
    p_flag = 0;
    r_flag = 0;
    lost_flag = 0;
end

if isempty(pre_mouse)
    mouse.mouseMove(640, 360);
    pre_mouse.x = 640;
    pre_mouse.y = 360;
    pre_mouse.deltax = 0;
    pre_mouse.deltay = 0;
    xydirection_string = [];
end

if isempty(mode_string)
    mode_string = [];
    mode_flag = 0;
    allstop_flag = 0;
    click_flag =0;
end

[rawdata_row rawdata_length] = size(rawdata_buffer);

%the buffer implementations (store data, transfer from rawdata_buffer to denoise_buffer
if( isnan(bb(5)))
    string_out = ['not exist'];
    pattern_buffer = [];
    mode_buffer = [];
    rawdata_buffer = [];
    D = []
    
    %using linear regression to predict the next frame
    a = (denoise_buffer(2,2) - denoise_buffer(2,1))/(denoise_buffer(1,2) - denoise_buffer(1,1));
    b = denoise_buffer(2,2) - a*denoise_buffer(1,2);
    x = denoise_buffer(1,2) + (denoise_buffer(1,2) - denoise_buffer(1,1))*0.8;
    y = a*x + b;
    new = [x;y;denoise_buffer(3,2);denoise_buffer(4,2)];
    denoise_buffer = [denoise_buffer(:,2),new];
    lost_flag = 1;
else
    %push bbox center coordinate and size into rawdata_buffer
    lost_flag = 0;
    bb_cp = bb_center(bb);
    bb_area = bb_size(bb);
    bb_data = [bb_cp; bb_area];
    bb_d = [bb_cp(1) bb_cp(2) bb_area(1) bb_area(2)];
    D = [D;bb_d]
    [rawdata_row rawdata_length] = size(rawdata_buffer);
    if rawdata_length < MAX_BUFFER_SIZE
        rawdata_buffer = [rawdata_buffer,bb_data];
    else if rawdata_length == MAX_BUFFER_SIZE
            %calculating average value of three consecutive frames
            c1 = sum(rawdata_buffer(:,1:3),2)/3;
            c2 = sum(rawdata_buffer(:,2:4),2)/3;
            denoise_buffer = [c1 c2]
            rawdata_buffer = [rawdata_buffer(:,2:4),bb_data];
        end
    end
end

[denoise_row denoise_length] = size(denoise_buffer);

if denoise_length == 2
    %calculate difference x and y between two consecutive average values
    delta_xy(1) = denoise_buffer(1,2) - denoise_buffer (1,1);
    delta_xy(2) = denoise_buffer(2,2) - denoise_buffer (2,1);
    if delta_xy(1)>0
        move_x = delta_xy(1)*6;
    else
        move_x = delta_xy(1)*6;
    end
    
    if delta_xy(2)>0
        move_y = delta_xy(2)*4.5;
    else
        move_y = delta_xy(2)*4.5;
    end
    delta_wh(1) = denoise_buffer(3,2) - denoise_buffer (3,1);
    delta_wh(2) = denoise_buffer(4,2) - denoise_buffer (4,1);
    
    %under mouse mode, determine if there is a click
    if (delta_xy(1) < 1) && (delta_xy(2) < 1) && (delta_wh(1) < LIMIT_W) && (delta_wh(2) < LIMIT_H)
        allstop_flag = 1;
    else
        allstop_flag = 0;
    end
end

%struct the pattern_buffer
[buffer2_row buffer2_length] = size(pattern_buffer);
if buffer2_length < MAX_BUFFER_SIZE2
    pattern_buffer = [pattern_buffer,directZ];
else if buffer2_length == MAX_BUFFER_SIZE2
        pattern_buffer = [pattern_buffer(:,2:3),directZ];
    end
end

%struct the mode_buffer
[buffer3_row buffer3_length] = size(mode_buffer);
if buffer3_length < MAX_BUFFER_SIZE2
    mode_buffer = [mode_buffer,mode];
else if buffer3_length == MAX_BUFFER_SIZE2
    mode_buffer = [mode_buffer(:,2:3),mode];
    end
end

%struct click_buffer
[buffer4_row buffer4_length] = size(click_buffer);
if mode_flag == 0
    if buffer4_length < MAX_BUFFER_SIZE3
        click_buffer = [click_buffer,allstop_flag];
    else if buffer4_length == MAX_BUFFER_SIZE3
            click_buffer = [click_buffer(:,2:5),allstop_flag];
        end
    end
end

% setting flags for x-y plane mouse movement and direction determination
if rawdata_length == MAX_BUFFER_SIZE
    %for mouse movement and xy-plane direction
    if abs(delta_xy(1))<=LIMIT_X && abs(delta_xy(2))<=LIMIT_Y
        stopxy_flag = 1; % if equal to 1 means mouse stop in x-y plane
    else
        stopxy_flag = 0;
    end
end

%for deciding z-axis direction
if rawdata_length ==  MAX_BUFFER_SIZE
    if abs(delta_wh(1))>LIMIT_W && abs(delta_wh(2))>LIMIT_H
        if c2(3)>c1(3) && c2(4)>c1(4)
            directZ = 1;
        end
        if c2(3)<c1(3) && c2(4)<c1(4)
            directZ = -1;
        end
    else
        directZ = 0;
    end
end

%determine the pattern: press, release and stop
if size(pattern_buffer) ~= 0
    if min(pattern_buffer) == 1
        pattern_string = 'press'
        p_flag = 1;
        mode = 1;
    else if max(pattern_buffer) == -1
            pattern_string = 'release'
            r_flag = 1;
            mode = -1;
        else if max(pattern_buffer) <1 & min(pattern_buffer) > -1
                pattern_string = 'stop'
                stop_flag = 1;
                mode = 0;
            end
        end
    end
end

%change mode if the mode change motion is detected
if size(pattern_buffer) ~= 0
    if min(mode_buffer) == 0 & p_flag == 1 & stop_flag == 1
        if mode_buffer(1) == 1 && mode_flag == 0
            mode_flag = 1;
            p_flag = 0;
            stop_flag = 0;
        else if mode_buffer(1) == 1 && mode_flag == 1
                mode_flag = 0;
                p_flag = 0;
                stop_flag = 0;
            end
        end
    end
end

%actuator for mode chnage
if mode_flag == 0
    mode_string = 'mouse'
else
    mode_string = 'scroll wheel'
end

% x-y plane mouse movement actuator and direction deternimation
if mode_flag == 0 && lost_flag == 0;
    mouse.mouseRelease(InputEvent.BUTTON2_MASK);
    
    if pre_mouse.x-move_x> LIMIT_SCREENX(1) & pre_mouse.x-move_x<LIMIT_SCREENX(2) ...
            pre_mouse.y+move_y> LIMIT_SCREENY(1) & pre_mouse.y+move_y<LIMIT_SCREENY(2)
        if stopxy_flag == 0
            %move the mouse
            mouse.mouseMove(pre_mouse.x-move_x, pre_mouse.y+move_y);
            click_flag = 0;
            pre_mouse.x = pre_mouse.x-move_x;
            pre_mouse.y = pre_mouse.y+move_y;
            %pre_mouse.deltax = delta_xy(1);
            %pre_mouse.deltay = delta_xy(2);
            %determine the x-y plane moving direction
            if abs(delta_xy(1)) > abs(delta_xy(2))
                % x moves longer
                if move_x > 0
                    xydirection_string = 'right';
                else
                    xydirection_string = 'left';
                end
            else
                % y moves longer
                if move_y < 0
                    xydirection_string = 'up';
                else
                    xydirection_string = 'down';
                end
            end
        end
        if stopxy_flag == 1
            mouse.mouseMove(pre_mouse.x, pre_mouse.y);
            %         mouse.mouseMove(pre_mouse.x+move_x*0.8, pre_mouse.y+move_y*0.6);
            %         pre_mouse.x = pre_mouse.x+move_x*0.8;
            %         pre_mouse.y = pre_mouse.y+move_y*0.6;
        end
    else
        if pre_mouse.x-move_x< LIMIT_SCREENX(1)
            mouse.mouseMove(5,pre_mouse.y);
        end
        if pre_mouse.x-move_x>LIMIT_SCREENX(2)
            mouse.mouseMove(1275,pre_mouse.y);
        end
        if pre_mouse.y+move_y< LIMIT_SCREENY(1)
            mouse.mouseMove(pre_mouse.x,5);
        end
        if pre_mouse.y+move_y> LIMIT_SCREENY(2)
            mouse.mouseMove(pre_mouse.x,315);
        end
    end
end

%under mouse mode, determine if there is a click
% if mode_flag == 0
%     if size(pattern_buffer) ~= 0
%         if mode_buffer(1) == 1 && mode_buffer(3) == -1 && p_flag == 1 && r_flag == 1 && stop_flag == 0
%             mouse.mousePress(InputEvent.BUTTON1_MASK);
%             mouse.mouseRelease(InputEvent.BUTTON1_MASK);
%             click_string = 'click'
%             p_flag = 0;
%             r_flag = 0;
%             stop_flag = 0;
%             click_flag = 0;
%         else
%             click_string = []
%         end
%     end
% end

% for click in mouse mode
if buffer4_length == MAX_BUFFER_SIZE3
    if min(click_buffer) == 1 && mode_flag == 0 && lost_flag == 0 && click_flag == 0
        click_string = 'click';
        mouse.mousePress(InputEvent.BUTTON1_MASK);
        mouse.mouseRelease(InputEvent.BUTTON1_MASK);
        click_flag = 1;
    else
        click_string = []
    end
end

%for scroll wheel mode
if mode_flag == 1
    mode_string = 'scroll wheel';
    %click the middle button
    mouse.mousePress(InputEvent.BUTTON2_MASK);
    %mave the page as mouse movement
    if pre_mouse.x+move_x> LIMIT_SCREENX(1) & pre_mouse.x+move_x<LIMIT_SCREENX(2) ...
            pre_mouse.y+move_y> LIMIT_SCREENY(1) & pre_mouse.y+move_y<LIMIT_SCREENY(2)
        if stopxy_flag == 0
            mouse.mouseMove(pre_mouse.x-move_x, pre_mouse.y+move_y);
            pre_mouse.x = pre_mouse.x-move_x;
            pre_mouse.y = pre_mouse.y+move_y;
        end
        if stopxy_flag == 1
            mouse.mouseMove(pre_mouse.x, pre_mouse.y);
        end
    else
         if pre_mouse.x-move_x< LIMIT_SCREENX(1)
            mouse.mouseMove(5,pre_mouse.y);
        end
        if pre_mouse.x-move_x>LIMIT_SCREENX(2)
            mouse.mouseMove(1275,pre_mouse.y);
        end
        if pre_mouse.y+move_y< LIMIT_SCREENY(1)
            mouse.mouseMove(pre_mouse.x,5);
        end
        if pre_mouse.y+move_y> LIMIT_SCREENY(2)
            mouse.mouseMove(pre_mouse.x,315);
        end
    end
end

csvwrite('data.csv',D)  %save the movement data in a csv file
H = 240;
%output the pattern, direction, mode and click
string = ['#' num2str(i) ', fps:' num2str(1/toc,3) ', pattern:' pattern_string ', xy:' xydirection_string ', mode:' mode_string ', click:' click_string];
text(10,H-10,string,'color','white','backgroundcolor','k','EdgeColor','blue','Linewidth',3);
text(10,H-10,string,'color','white','backgroundcolor','k');