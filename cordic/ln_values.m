function [ n_data, x, fx ] = ln_values ( n_data )

%*****************************************************************************80
%
%% LN_VALUES returns some values of the natural logarithm function.
%
%  Discussion:
%
%    In Mathematica, the function can be evaluated by:
%
%      Log[x]
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    18 June 2007
%
%  Author:
%
%    John Burkardt
%
%  Reference:
%
%    Milton Abramowitz, Irene Stegun,
%    Handbook of Mathematical Functions,
%    National Bureau of Standards, 1964,
%    ISBN: 0-486-61272-4,
%    LC: QA47.A34.
%
%    Stephen Wolfram,
%    The Mathematica Book,
%    Fourth Edition,
%    Cambridge University Press, 1999,
%    ISBN: 0-521-64314-7,
%    LC: QA76.95.W65.
%
%  Parameters:
%
%    Input/output, integer N_DATA.  The user sets N_DATA to 0 before the
%    first call.  On each call, the routine increments N_DATA by 1, and
%    returns the corresponding data; when there is no more data, the
%    output value of N_DATA will be 0 again.
%
%    Output, real X, the argument of the function.
%
%    Output, real FX, the value of the function.
%
  n_max = 20;

  fx_vec = [ ...
    -11.512925464970228420E+00, ...
     -4.6051701859880913680E+00, ...
     -2.3025850929940456840E+00, ...
     -1.6094379124341003746E+00, ...
     -1.2039728043259359926E+00, ...
     -0.91629073187415506518E+00, ...
     -0.69314718055994530942E+00, ...
     -0.51082562376599068321E+00, ...
     -0.35667494393873237891E+00, ...
     -0.22314355131420975577E+00, ...
     -0.10536051565782630123E+00, ...
      0.00000000000000000000E+00, ...
      0.69314718055994530942E+00, ...
      1.0986122886681096914E+00, ...
      1.1447298858494001741E+00, ...
      1.6094379124341003746E+00, ...
      2.3025850929940456840E+00, ...
      2.9957322735539909934E+00, ...
      4.6051701859880913680E+00, ...
      18.631401766168018033E+00 ];

  x_vec = [ ...
    1.0E-05, ...
    1.0E-02, ...
    0.1E+00, ...
    0.2E+00, ...
    0.3E+00, ...
    0.4E+00, ...
    0.5E+00, ...
    0.6E+00, ...
    0.7E+00, ...
    0.8E+00, ...
    0.9E+00, ...
    1.0E+00, ...
    2.0E+00, ...
    3.0E+00, ...
    3.1415926535897932385E+00, ...
    5.0E+00, ...
    10.0E+00, ...
    20.0E+00, ...
    100.0E+00, ...
    123456789.0E+00 ];

  if ( n_data < 0 )
    n_data = 0;
  end

  n_data = n_data + 1;

  if ( n_max < n_data )
    n_data = 0;
    x = 0.0;
    fx = 0.0;
  else
    x = x_vec(n_data);
    fx = fx_vec(n_data);
  end

  return
end
