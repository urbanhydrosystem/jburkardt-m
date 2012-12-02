function geompack_test07 ( )

%*****************************************************************************80
%
%% TEST07 tests TRIANGULATION_PLOT_EPS.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    14 February 2003
%
%  Author:
%
%    John Burkardt
%
  g_num = 9;
  ndim = 2;
  tri_num = 12;

  file_name = 'triangulation_plot.eps';
  g_xy = [ ...
       0.0, 0.0; ... 
       0.0, 1.0; ... 
       0.2, 0.5; ...
       0.3, 0.6; ...
       0.4, 0.5; ...
       0.6, 0.4; ...
       0.6, 0.5; ...
       1.0, 0.0; ...
       1.0, 1.0 ]';
  nod_tri = [ ...
       2, 1, 3; ... 
       3, 1, 6; ... 
       2, 3, 4; ... 
       4, 3, 5; ... 
       7, 4, 5; ... 
       5, 3, 6; ... 
       7, 5, 6; ... 
       9, 4, 7; ... 
       6, 1, 8; ... 
       7, 6, 8; ... 
       7, 8, 9; ... 
       2, 4, 9 ]';

  fprintf ( 1, '\n' );
  fprintf ( 1, 'TEST07\n' );
  fprintf ( 1, '  TRIANGULATION_PLOT_EPS can plot a triangulation.\n' );

  triangulation_plot_eps ( file_name, g_num, g_xy, tri_num, nod_tri );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  TRIANGULATION_PLOT_EPS has created an\n' );
  fprintf ( 1, '  Encapsulated PostScript file (EPS) containing\n' );
  fprintf ( 1, '  an image of the triangulation.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  This file is called %s\n', file_name );

  return
end