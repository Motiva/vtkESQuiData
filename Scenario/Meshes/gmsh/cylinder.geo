Point(1) = {0,0,0,0.5};

Point(2) = {1,0,0,0.5};
Point(3) = {0,1,0,0.5};
Point(4) = {-1,0,0,0.5};
Point(5) = {0,-1,0,0.5};

Circle(1) = {2,1,3};
Circle(2) = {3,1,4};
Circle(3) = {4,1,5};
Circle(4) = {5,1,2};

Line Loop(5) = {1,2,3,4};
Plane Surface(6) = {5};

Extrude {0,0,1} {
  Surface{6};
}
Line(29) = {7, 1};
Physical Surface(30) = {6};
Physical Surface(31) = {6, 23};
Line Loop(32) = {8, -14, -1, 13};
Plane Surface(33) = {32};
Delete {
  Surface{33};
}
Dilate {{0, 0, 100}, 0.5} {
  Surface{19, 23, 27, 15};
}
