function randi_test ( )

%*****************************************************************************80
%
%% RANDI_TEST shows how random integers are generated in MATLAB.
%
%  Discussion:
%
%    The RANDI function is meant to replace MATLAB's previous function
%    for computing random integers, called RANDINT().
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    14 February 2013
%
%  Author:
%
%    John Burkardt
%
  timestamp ( );
  fprintf ( 1, '\n' );
  fprintf ( 1, 'RANDI_TEST:\n' );
  fprintf ( 1, '  MATLAB version\n' );
  fprintf ( 1, '  Test the MATLAB RANDI function.\n' );

  randi_test01 ( );

  randi_test02 ( );

  seed = 123456789;
  randi_test03 ( seed );

  seed = 987654321;
  randi_test03 ( seed );

  seed = 123456789;
  randi_test03 ( seed );
%
%  Terminate.
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'RANDI_TEST:\n' );
  fprintf ( 1, '  Normal end of execution.\n' );

  fprintf ( 1, '\n' );
  timestamp ( );

  return
end
function randi_test01 ( )

%*****************************************************************************80
%
%% RANDI_TEST01 simply calls the random integer generator a few times.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    14 February 2013
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'RANDI_TEST01:\n' );
  fprintf ( 1, '  In MATLAB, random integers are generated by calling RANDI:\n' );
  fprintf ( 1, '  The maximum value is specified as IMAX.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  A = randi ( imax, 1 ) a random scalar value between 1 and IMAX.\n' );
  fprintf ( 1, '  B = randi ( imax, 5, 1 ) a random column vector of 5 entries.\n' );
  fprintf ( 1, '  C = randi ( imax, 1, 5 ) a random row vector of 5 entries.\n' );
  fprintf ( 1, '  D = randi ( imax, 3, 4 ) a 3 by 4 random matrix.\n' );
  fprintf ( 1, '  E = randi ( imax, 5 )    a 5 by 5 random matrix.\n' );

  a = randi ( 9, 1 )
  b = randi ( 9, 5, 1 )
  c = randi ( 9, 1, 5 )
  d = randi ( 4, 3, 4 )
  e = randi ( 4, 5 )

  return
end
function randi_test02 ( )

%*****************************************************************************80
%
%% RANDI_TEST02 specifies the lower and upper limits.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    14 February 2013
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'RANDI_TEST02:\n' );
  fprintf ( 1, '  RANDI allows the user to specify the numeric range.\n' );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  A = randi ( [ 5,    10 ],  1, 1 ) a random scalar value.\n' );
  fprintf ( 1, '  B = randi ( [ 7,     8 ], 10, 1 ) a random column vector of 5 entries.\n' );
  fprintf ( 1, '  C = randi ( [ -1,   +1 ],  1, 5 ) a random row vector of 5 entries.\n' );
  fprintf ( 1, '  D = randi ( [ -5,   +5 ],  3, 4 ) a 3 by 4 random matrix.\n' );
  fprintf ( 1, '  E = randi ( [ 100, 200 ],  5, 5 ) a 5 by 5 random matrix.\n' );

  a = randi ( [   5,  10 ], 1, 1 )
  b = randi ( [   7,   8 ], 10, 1 )
  c = randi ( [  -1,  +1 ], 1, 5 )
  d = randi ( [  -5,  +5 ], 3, 4 )
  e = randi ( [ 100, 200 ], 5, 5 )

  return
end
function randi_test03 ( seed )

%*****************************************************************************80
%
%% RANDI_TEST03 sets the seed before calling RANDI.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    13 February 2013
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'RANDI_TEST03:\n' );
  fprintf ( 1, '  By setting the random number seed, you can control\n' );
  fprintf ( 1, '  how the random number sequence begins.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  The command "rng ( 123456789 )" sets the seed to 123456789.\n' );

  rng ( seed );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Seed has been set to %d\n', seed );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Now generate 5 random values.\n' );

  for i = 1 : 5
    a = randi (  [ 1, 100 ], 1, 1 );
    fprintf ( 1, '  RANDI([1,100],1,1) = %g\n', a );
  end

  rng ( seed );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Seed has been reset to %d\n', seed );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Now generate 5 more random values.\n' );

  for i = 1 : 5
    a = randi ( [ 1, 100 ], 1, 1 );
    fprintf ( 1, '  RANDI([1,100],1,1) = %g\n', a );
  end

  return
end
function timestamp ( )

%*****************************************************************************80
%
%% TIMESTAMP prints the current YMDHMS date as a timestamp.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    14 February 2003
%
%  Author:
%
%    John Burkardt
%
  t = now;
  c = datevec ( t );
  s = datestr ( c, 0 );
  fprintf ( 1, '%s\n', s );

  return
end
