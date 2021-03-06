function helix_test ( )

%*****************************************************************************80
%
%% HELIX_TEST tests GPL_CURVE on HELIX.GPL.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    12 May 2014
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'HELIX_TEST:\n' );
  fprintf ( 1, '  Read a GPL file that describes a single 1D, 2D or 3D\n' );
  fprintf ( 1, '  curve, and display it.\n' );

  filename = 'helix.gpl';
%
%  I should be able to determine M and N from the file...
%
  m = gpl_dimension ( filename );
  n = 201;

  x = gpl_curve ( filename, m, n );

  plot3 ( x(1,:), x(2,:), x(3,:), 'r-', 'Linewidth', 3 );
  xlabel ( '<---X--->', 'Fontsize', 16 );
  ylabel ( '<---Y--->', 'Fontsize', 16 );
  zlabel ( '<---Z--->', 'Fontsize', 16 );
  title ( filename, 'Fontsize', 24 )
  grid on

  png_filename = 'helix.png';
  print ( '-dpng', png_filename );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Saving PNG snapshot as "%s"\n', png_filename );

  return
end
