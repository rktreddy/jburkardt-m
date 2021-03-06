function perm0_check_test ( )

%*****************************************************************************80
%
%% PERM0_CHECK_TEST tests PERM0_CHECK.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    24 May 2015
%
%  Author:
%
%    John Burkardt
%
  n = 5;
  p1 = [ 5, 2, 3, 4, 1 ];
  p2 = [ 4, 1, 3, 0, 2 ];
  p3 = [ 0, 2, 1, 3, 2 ];

  fprintf ( 1, '\n' );
  fprintf ( 1, 'PERM0_CHECK_TEST\n' );
  fprintf ( 1, '  PERM0_CHECK checks a permutation of 0,...,N-1.\n' );

  i4vec_transpose_print ( n, p1, '  Permutation 1:' );
  ierror = perm0_check ( n, p1 );

  i4vec_transpose_print ( n, p2, '  Permutation 2:' );
  ierror = perm0_check ( n, p2 );

  i4vec_transpose_print ( n, p3, '  Permutation 3:' );
  ierror = perm0_check ( n, p3 );

  return
end
