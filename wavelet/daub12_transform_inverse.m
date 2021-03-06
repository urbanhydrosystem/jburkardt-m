function x = daub12_transform_inverse ( n, y )

%*****************************************************************************80
%
%% DAUB12_TRANSFORM_INVERSE inverts the DAUB12 transform of a vector.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    30 July 2011
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer N, the dimension of the vector.
%    N must be a power of 2 and at least 4.
%
%    Input, real Y(N), the transformed vector.
%
%    Output, real X(N), the original vector.
%
  c = [ ...
    0.1115407433501095; ...
    0.4946238903984533; ...
    0.7511339080210959; ...
    0.3152503517091982; ...
   -0.2262646939654400; ...
   -0.1297668675672625; ...
    0.0975016055873225; ...
    0.0275228655303053; ...
   -0.0315820393174862; ...
    0.0005538422011614; ...
    0.0047772575109455; ...
   -0.0010773010853085 ];
  p = 11;
  x(1:n,1) = y(1:n);
  m = 4;
  q = floor ( ( p - 1 ) / 2 );

  while ( m <= n )
  
    z(1:m,1) = 0.0;

    j = 1;

    mh = floor ( m / 2 );

    for i = - q + 1 : mh - q
      
      for k = 0 : 2 : p - 1
        i0 = i4_wrap ( i      + k / 2,     1,      mh );
        i1 = i4_wrap ( i + mh + k / 2,     mh + 1, m  );
        z(j,1)   = z(j,1)   + c(p-k)   * x(i0) + c(k+2) * x(i1);
        z(j+1,1) = z(j+1,1) + c(p-k+1) * x(i0) - c(k+1) * x(i1);
      end

      j = j + 2;

    end

    x(1:m,1) = z(1:m);

    m = m * 2;

  end

  return
end
