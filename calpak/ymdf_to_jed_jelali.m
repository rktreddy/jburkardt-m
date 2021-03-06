function jed = ymdf_to_jed_jelali ( y, m, d, f )

%*****************************************************************************80
%
%% YMDF_TO_JED_JELALI converts a Jelali YMDF date to a JED.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    13 March 2013
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer Y, M, D, real F, the YMDF date.
%
%    Output, real JED, the corresponding Julian Ephemeris Date.
%
  jed_epoch = epoch_to_jed_jelali ( );

  jed = jed_epoch + ( d - 1 ) + 30 * ( m - 1 ) + 365 * ( y - 1 ) ...
    + floor ( ( y - 1 ) / 4 ) + f;

  return
end
