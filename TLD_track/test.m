function test
   f = figure;
   a1 = axes ( 'parent', f, 'position', [0 0 0.5 0.5], 'ButtonDownFcn', @redrawA1 );
   a2 = axes ( 'parent', f, 'position', [0.5 0.5 0.5 0.5], 'ButtonDownFcn', @redrawA2, 'nextplot', 'add' );
 end
 function redrawA1 ( obj, event )
   disp( 'in callback A1' );
   plot ( gca, rand(10), rand(10) );
 end
 function redrawA2 ( obj, event )
   cla ( gca )
   disp( 'in callback A2' );
   plot ( gca, rand(10), rand(10) );
 end