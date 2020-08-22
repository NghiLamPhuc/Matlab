clc
clear all
format long

arr1 = [1 2 3];
arr2 = [0,-5];
arr3 = [arr1 arr2];
arr1 = 1:5;
arr2 = [1:0.5:2];
arr3 = 10:-1:6;
emp_vect = [];

col_arr = [1:3]';
col_arr = [1;2;3];

arr = 10:-1:0;
arr(5);
arr(1:3);
arr([10:-2:6]);
arr([7,8,11]);
% xoa phan tu
arr([2 5]) = [];
size(arr);

% 1
x = [3 1 5 7 9 2 6];
x(3);
x(1:7);
x(1:end);
x(1:end-1);
x(6:-2:1);
x([1 6 2 1 1]);
sum(x);

% 2
x = [1 5 2 8 9 0 1];
y = [5 2 2 6 0 0 2];
x>y;
y<x;
x == y;
x<=y;
y>=x;
x|y;
x&y;
x&(-y);
% 0 1 0 1 1 0 0
(x>y)|(y<x);
(x>y)&(y<x);

% 3
a = [1 0 2];
b = [0 2 2];
% a=b;
% tai saooooooooooo
% a<b
% a<b<a
% a<b<b
% a|(a)
% b&(b)
% a((b))
% a=b==a

% 4
x = 1:10; y = [3 1 5 6 8 2 9 4 7 0];
(x>3)&(x<8);
x(x>5);
y(x<=4);
y((x<2)|(x>=8));
x((x<2)|(x>=8));
x(y<0);
