A = [0.5377 -1.3077 -1.3499 -0.2050;
    1.8339 -0.4336 3.0349 -0.1241;
    -2.2588 0.3426 0.7254 1.4897;
    0.8622 3.5784 -0.0631 1.4090;
    0.3188 2.7694 0.7147 1.4172]

d1 = A(:) %displays all values in a single column, from top left, downwards, to bottom right
d2 = A([2 4 7]) %displays matrix values 2, 4 and 7 (from top left, moves down and right)
d3 = [A >= 0.2] %displays logical array of 1's and 0's, only putting 1's where the value is >= 0.2, and 0 everywhere else
d4 = A([A >= 0.2]) %lists all elements of matrix A that have a value greater or equal to 0.2, with their original values
A([A >= 0.2]) = 0 % replaces all elements of matrix A where value is greater or equal to 0.2 with a 0.