function [ node_xy, triangle_node, triangle_neighbor ] = ...
  triangulation_order3_example2 ( node_num, triangle_num )

%*****************************************************************************80
%
%% TRIANGULATION_ORDER3_EXAMPLE2 sets up a sample triangulation.
%
%  Discussion:
%
%    This triangulation is actually a Delaunay triangulation.
%
%    The appropriate input values of NODE_NUM and TRIANGLE_NUM can be
%    determined by calling TRIANGULATION_ORDER3_EXAMPLE2_SIZE first.
%
%  Diagram:
%
%   21-22-23-24-25
%    |\ |\ |\ |\ |
%    | \| \| \| \|
%   16-17-18-19-20
%    |\ |\ |\ |\ |
%    | \| \| \| \|
%   11-12-13-14-15
%    |\ |\ |\ |\ |
%    | \| \| \| \|
%    6--7--8--9-10
%    |\ |\ |\ |\ |
%    | \| \| \| \|
%    1--2--3--4--5
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    03 January 2007
%
%  Modified:
%
%    31 March 2005
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer NODE_NUM, the number of nodes.  
%
%    Input, integer TRIANGLE_NUM, the number of triangles.  
%
%    Output, real NODE_XY(2,NODE_NUM), the coordinates of the points.
%
%    Output, integer TRIANGLE_NODE(3,TRIANGLE_NUM), the nodes that make 
%    up the triangles.
%
%    Output, integer TRIANGLE_NEIGHBOR(3,TRIANGLE_NUM), the triangle neighbors 
%    on each side.  Negative values indicate edges that lie on the exterior.
%
  dim_num = 2;

  node_xy(1:dim_num,1:node_num) = [ ...
    0.0, 0.0; ...
    1.0, 0.0; ...
    2.0, 0.0; ...
    3.0, 0.0; ...
    4.0, 0.0; ...
    0.0, 1.0; ...
    1.0, 1.0; ...
    2.0, 1.0; ...
    3.0, 1.0; ...
    4.0, 1.0; ...
    0.0, 2.0; ...
    1.0, 2.0; ...
    2.0, 2.0; ...
    3.0, 2.0; ...
    4.0, 2.0; ...
    0.0, 3.0; ...
    1.0, 3.0; ...
    2.0, 3.0; ...
    3.0, 3.0; ...
    4.0, 3.0; ...
    0.0, 4.0; ...
    1.0, 4.0; ...
    2.0, 4.0; ...
    3.0, 4.0; ...
    4.0, 4.0 ]';

  triangle_node(1:3,1:triangle_num ) = [ ...
     1,  2,  6; ...
     7,  6,  2; ...
     2,  3,  7; ...
     8,  7,  3; ...
     3,  4,  8; ...
     9,  8,  4; ...
     4,  5,  9; ...
    10,  9,  5; ...
     6,  7, 11; ...
    12, 11,  7; ...
     7,  8, 12; ...
    13, 12,  8; ...
     8,  9, 13; ...
    14, 13,  9; ...
     9, 10, 14; ...
    15, 14, 10; ...
    11, 12, 16; ...
    17, 16, 12; ...
    12, 13, 17; ...
    18, 17, 13; ...
    13, 14, 18; ...
    19, 18, 14; ...
    14, 15, 19; ...
    20, 19, 15; ...
    16, 17, 21; ...
    22, 21, 17; ...
    17, 18, 22; ...
    23, 22, 18; ...
    18, 19, 23; ...
    24, 23, 19; ...
    19, 20, 24; ...
    25, 24, 20 ]';

  triangle_neighbor(1:3,1:triangle_num) = [...
    -1,  2, -1; ...
     9,  1,  3; ...
    -1,  4,  2; ...
    11,  3,  5; ...
    -1,  6,  4; ...
    13,  5,  7; ...
    -1,  8,  6; ...
    15,  7, -1; ... 
     2, 10, -1; ...
    17,  9, 11; ...
     4, 12, 10; ...
    19, 11, 13; ...
     6, 14, 12; ...
    21, 13, 15; ...
     8, 16, 14; ...
    23, 15, -1; ... 
    10, 18, -1; ...
    25, 17, 19; ...
    12, 20, 18; ...
    27, 19, 21; ...
    14, 22, 20; ...
    29, 21, 23; ...
    16, 24, 22; ...
    31, 23, -1; ... 
    18, 26, -1; ...
    -1, 25, 27; ...
    20, 28, 26; ...
    -1, 27, 29; ...
    22, 30, 28; ...
    -1, 29, 31; ...
    24, 32, 30; ...
    -1, 31, -1 ]';

  return
end
