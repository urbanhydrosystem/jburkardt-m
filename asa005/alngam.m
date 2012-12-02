function [ value, ifault ] = alngam ( xvalue )

%*****************************************************************************80
%
%% ALNGAM computes the logarithm of the gamma function.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    15 January 2008
%
%  Author:
%
%    Original FORTRAN77 version by Allan Macleod.
%    MATLAB version by John Burkardt.
%
%  Reference:
%
%    Allan Macleod,
%    Algorithm AS 245,
%    A Robust and Reliable Algorithm for the Logarithm of the Gamma Function,
%    Applied Statistics,
%    Volume 38, Number 2, 1989, pages 397-402.
%
%  Parameters:
%
%    Input, real XVALUE, the argument of the Gamma function.
%
%    Output, real VALUE, the logarithm of the gamma function of X.
%
%    Output, integer IFAULT, error flag.
%    0, no error occurred.
%    1, XVALUE is less than or equal to 0.
%    2, XVALUE is too big.
%
  alr2pi = 0.918938533204673;
  r1 = [ ...
    -2.66685511495, ...
    -24.4387534237, ...
    -21.9698958928, ...
     11.1667541262, ...
     3.13060547623, ...
     0.607771387771, ...
     11.9400905721, ...
     31.4690115749, ...
     15.2346874070 ];
  r2 = [ ...
    -78.3359299449, ...
    -142.046296688, ...
     137.519416416, ...
     78.6994924154, ...
     4.16438922228, ...
     47.0668766060, ...
     313.399215894, ...
     263.505074721, ...
     43.3400022514 ];
  r3 = [ ...
    -2.12159572323E+05, ...
     2.30661510616E+05, ...
     2.74647644705E+04, ...
    -4.02621119975E+04, ...
    -2.29660729780E+03, ...
    -1.16328495004E+05, ...
    -1.46025937511E+05, ...
    -2.42357409629E+04, ...
    -5.70691009324E+02 ];
  r4 = [ ...
     0.279195317918525, ...
     0.4917317610505968, ...
     0.0692910599291889, ...
     3.350343815022304, ...
     6.012459259764103 ];
  xlge = 5.10E+05;
  xlgst = 1.0E+30;

  x = xvalue;
  value = 0.0;
%
%  Check the input.
%
  if ( xlgst <= x )
    ifault = 2;
    return
  end

  if ( x <= 0.0 )
    ifault = 1;
    return
  end

  ifault = 0;
%
%  Calculation for 0 < X < 0.5 and 0.5 <= X < 1.5 combined.
%
  if ( x < 1.5 )

    if ( x < 0.5 )

      value = - log ( x );
      y = x + 1.0;
%
%  Test whether X < machine epsilon.
%
      if ( y == 1.0 )
        return
      end

    else

      value = 0.0;
      y = x;
      x = ( x - 0.5 ) - 0.5;

    end

    value = value + x * (((( ...
        r1(5)   * y ...
      + r1(4) ) * y ...
      + r1(3) ) * y ...
      + r1(2) ) * y ...
      + r1(1) ) / (((( ...
                  y ...
      + r1(9) ) * y ...
      + r1(8) ) * y ...
      + r1(7) ) * y ...
      + r1(6) );

    return

  end
%
%  Calculation for 1.5 <= X < 4.0.
%
  if ( x < 4.0 )

    y = ( x - 1.0 ) - 1.0;

    value = y * (((( ...
        r2(5)   * x ...
      + r2(4) ) * x ...
      + r2(3) ) * x ...
      + r2(2) ) * x ...
      + r2(1) ) / (((( ...
                  x ...
      + r2(9) ) * x ...
      + r2(8) ) * x ...
      + r2(7) ) * x ...
      + r2(6) );
%
%  Calculation for 4.0 <= X < 12.0.
%
  elseif ( x < 12.0 )

    value = (((( ...
        r3(5)   * x ...
      + r3(4) ) * x ...
      + r3(3) ) * x ...
      + r3(2) ) * x ...
      + r3(1) ) / (((( ...
                  x ...
      + r3(9) ) * x ...
      + r3(8) ) * x ...
      + r3(7) ) * x ...
      + r3(6) );
%
%  Calculation for 12.0 <= X.
%
  else

    y = log ( x );
    value = x * ( y - 1.0 ) - 0.5 * y + alr2pi;

    if ( x <= xlge )

      x1 = 1.0 / x;
      x2 = x1 * x1;

      value = value + x1 * ( ( ...
             r4(3)   * ...
        x2 + r4(2) ) * ...
        x2 + r4(1) ) / ( ( ...
        x2 + r4(5) ) * ...
        x2 + r4(4) );

    end

  end

  return
end