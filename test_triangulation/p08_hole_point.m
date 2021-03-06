function hole_point = p08_hole_point ( hole_index, m )

%*****************************************************************************80
%
%% P08_HOLE_POINT returns a point inside a given hole in problem 8.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    12 April 2009
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer HOLE_INDEX, the index of the hole.
%
%    Input, integer M, the spatial dimension.
%
%    Output, real HOLE_POINT(M), a point in the hole
%
  hole_point(1:2) = [ 0.6, 0.0 ];

  return
end
