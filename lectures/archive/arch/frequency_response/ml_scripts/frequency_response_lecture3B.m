% ME3050 - Spring 2020 Tennessee Technological University
% Tristan Hill - 04/19/2020
clear variables;clc;close all

% define the system parameters
% this is an underdamped system

m=2;c=.1;k=20;

zeta=c/(2*sqrt(m*k));

% create a system object from the transfer function
sys=tf(1/k,[(m/k) (c/k) 1]);

% use built-in MATLAB Bode Plot
figure(1)

bode(sys);grid on
str=sprintf('Bode Diagram, zeta=%.2f',zeta);
title(str)
