function x = p10_root ( i )

%*****************************************************************************80
%
%% P10_ROOT returns a root for problem 10.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    07 May 2011
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer I, the index of the requested root.
%
%    Output, real X, the value of the root.
%
  if ( i == 1 )
    x = 0.0;
  else
    fprintf ( 1, '\n' );
    fprintf ( 1, 'P10_ROOT - Fatal error!\n' );
    fprintf ( 1, '  Illegal root index = %d\n', i );
    error ( 'P10_ROOT - Fatal error!' );
  end

  return
end
