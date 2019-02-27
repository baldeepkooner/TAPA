Coupled = 1;
TwoCarriers = 1;
RC = 1;

nx = 201;
l = 1e-6;

x =linspace(0,l,nx);
dx = x(2)-x(1);
xm = x(1:nx-1) + 0.5*dx;
x0 = l/2;
nw = l/20;
%Nd = ones(1, nx); 
%for j = 1:nx
%    Nd(j) = 1e16 * exp(j); 
%end
%Nd = linspace(1e16, 20e16, nx);
%Nd = 1e16 * 1e6; % Const. 1/cm3 (100 cm/m)^3
%Nd = 1e16*1e6*exp(-((x-x0)/nw).^2);

%My modifications (Exponential gradient implementation):
Nd = 2e16*1e6;
k = 5e6; 
NetDoping = Nd*exp(-k.*x); % generating an exponential doping gradient

x0 = l/2;
nw = l/20;
npDisturbance = 0; %1e16*1e6*exp(-((x-x0)/nw).^2);

LVbc = 0;
RVbc = 0;

TStop = 14200000*1e-18;
PlDelt = 100000*1e-18;

%PlotYAxis = {[-6e-9 0] [-0.02 0.04] [0 20e-5]...
%    [1e16 1.02e16] [9.8e15 10.05e15] [0 2e29]...
%    [-20e33 15e33] [-2.5e34 2e34] [-1.1e8 1.1e8] ...
%    [0 0.04] [-0.01 0] [0 1.2e16]};

doPlotImage = 0;
PlotFile = 'Gau2CarRC.gif';
