function value = r8mat_in_01 ( m, n, a )

%*****************************************************************************80
%
%% R8MAT_IN_01 is TRUE if the entries of an R8MAT are in the range [0,1].
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    06 October 2004
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer M, the number of rows in A.
%
%    Input, integer N, the number of columns in A.
%
%    Input, real A(M,N), the matrix.
%
%    Output, logical VALUE, is TRUE if every entry of A is
%    between 0 and 1.
%
  if ( any ( a(1:m,1:n) < 0.0 | 1.0 < a(1:m,1:n) ) )
    value = 0;
  else
    value = 1;
  end

  return
end
