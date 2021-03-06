function area = quad_area2_2d ( q )

%*****************************************************************************80
%
%% QUAD_AREA2_2D computes the area of a quadrilateral in 2D.
%
%  Discussion:
%
%    A quadrilateral is a polygon defined by 4 vertices.
%
%    This algorithm computes the area of the related
%    Varignon parallelogram first.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    09 May 2010
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, real Q(2,4), the vertices, specified in
%    counter clockwise order.
%
%    Output, real AREA, the area of the quadrilateral.
%

%
%  Define a parallelogram by averaging consecutive vertices.
%
  p(1:2,1:3) = ( q(1:2,1:3) + q(1:2,2:4) ) / 2.0;
  p(1:2,  4) = ( q(1:2,  4) + q(1:2,1  ) ) / 2.0;
%
%  Compute the area.
%
  area = parallelogram_area_2d ( p );
%
%  The quadrilateral's area is twice that of the parallelogram.
%
  area = 2.0 * area;

  return
end
