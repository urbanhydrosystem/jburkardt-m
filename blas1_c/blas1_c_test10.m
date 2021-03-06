function blas1_c_test10 ( )

%*****************************************************************************80
%
%% TEST10 tests CSIGN1.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    15 April 2006
%
%  Author:
%
%    John Burkardt
%
  seed = 123456789;

  fprintf ( 1, '\n' );
  fprintf ( 1, 'TEST10\n' );
  fprintf ( 1, '  CSIGN1 ( C1, C2 ) transfers the sign of complex C2\n' );
  fprintf ( 1, '  to the CABS1 magnitude of C1.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, ...
    '           C1                    C2                    C3\n' );
  fprintf ( 1, ...
    '  --------------------  --------------------  --------------------\n' );
  fprintf ( 1, '\n' );

  for j = 1 : 10

    [ c1, seed ] = c4_uniform_01 ( seed );
    c1 = 5.0 * c1;
    [ c2, seed ] = c4_uniform_01 ( seed );
    c2 = 5.0 * c2;
    c3 = csign1 ( c1, c2 );

    fprintf ( 1, '  %10f  %10f  %10f  %10f  %10f  %10f\n', ...
      real ( c1 ), imag ( c1 ), real ( c2 ), imag ( c2 ), ...
      real ( c3 ), imag ( c3 ) );

  end

  return
end
