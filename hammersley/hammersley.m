function r = hammersley ( )

%*****************************************************************************80
%
%% HAMMERSLEY computes an element of an DIM_NUM-dimensional Hammersley sequence.
%
%  Discussion:
%
%    The DIM_NUM-dimensional Hammersley sequence is really DIM_NUM separate
%    sequences, each generated by a particular base.  If the base is 
%    greater than 1, a standard 1-dimensional
%    van der Corput sequence is generated.  But if the base is 
%    negative, this is a signal that the much simpler sequence J/(-BASE) 
%    is to be generated.  For the standard Hammersley sequence, the
%    first spatial coordinate uses a base of (-N), and subsequent
%    coordinates use bases of successive primes (2, 3, 5, 7, 11, ...).
%    This program allows the user to specify any combination of bases,
%    included nonprimes and repeated values.
%
%    This routine selects elements of a "leaped" subsequence of the 
%    Hammersley sequence.  The subsequence elements are indexed by a
%    quantity called STEP, which starts at 0.  The STEP-th subsequence 
%    element is simply element 
%
%      SEED(1:DIM_NUM) + STEP * LEAP(1:DIM_NUM) 
%
%    of the original Hammersley sequence.
%
%
%    This routine "hides" a number of input arguments.  To specify these
%    arguments explicitly, use I4_TO_HAMMERSLEY instead.
%
%    All the arguments have default values.  However, if you want to
%    examine or change them, you may call the appropriate routine first.
%
%    * DIM_NUM, the spatial dimension, 
%      Default: DIM_NUM = 1;
%      Required: 1 <= DIM_NUM is required.
%
%    * STEP, the subsequence index.
%      Default: STEP = 0.
%      Required: 0 <= STEP.
%
%    * SEED(1:DIM_NUM), the Hammersley sequence element corresponding to STEP = 0.
%      Default SEED = (0, 0, ... 0).  
%      Required: 0 <= SEED(1:DIM_NUM).
%
%    * LEAP(1:DIM_NUM), the succesive jumps in the Hammersley sequence.
%      Default: LEAP = (1, 1, ..., 1). 
%      Required: 1 <= LEAP(1:DIM_NUM).
%
%    * BASE(1:DIM_NUM), the Hammersley bases.
%      Default: BASE = (2, 3, 5, 7, 11, ... ) or (-N,2,3,5,7,11,...) if N is known. 
%      Required: 1 < BASE(I) for any van der Corput dimension, or BASE(I) < 0
%      to generate the fractional sequence J/|BASE(I)|.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    18 July 2004
%
%  Author:
%
%    John Burkardt
%
%  Reference:
%
%    John Hammersley,
%    Monte Carlo methods for solving multivariable problems,
%    Proceedings of the New York Academy of Science,
%    Volume 86, 1960, pages 844-874.
%
%    Ladislav Kocis, William Whiten,
%    Computational Investigations of Low-Discrepancy Sequences,
%    ACM Transactions on Mathematical Software,
%    Volume 23, Number 2, 1997, pages 266-294.
%
%  Parameters:
%
%    Output, real R(1:DIM_NUM), the SEED-th element of the Hammersley sequence
%    for base BASE.
%
  dim_num = hammersley_dim_num_get ( );
  step = hammersley_step_get ( );
  seed = hammersley_seed_get ( );
  leap = hammersley_leap_get ( );
  base = hammersley_base_get ( );

  r(1:dim_num) = i4_to_hammersley ( dim_num, step, seed, leap, base );

  step = step + 1;
  hammersley_step_set ( step );

  return
end