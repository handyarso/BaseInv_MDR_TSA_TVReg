% rho01 = 2200; rho02 = 2250; rho_bground = 2700; % 2600; % 2500;
rho01 = 2200; rho02 = 2200; rho_bground = 2400;
maxit = 5; myu = 1.5;
maxdepth = 20; threshold = .001;    % mGal

%%
% Displaying the map of the datasets
displayedData = 1; 

%%
% Using self-defining TSA 2nd order coefficients
customTSA = 0;

% aa x2 + bb y2 + cc x + dd y + ee xy + ff
aa = -0.0018;
bb = 0.0101;
cc = 0.0002;
dd = 0.0100;
ee = -1.5253;
ff = 114.0700;

%%
% Line location to be monitored
xpos = 10;
ypos = 30;

%% CAUTION, Demo version has limitations
dx = 1e3; dy = 1e3; % In demo version the cell size is locked at 1e3 m2.
xSize = 71; ySize = 41; % Change is possible only for smaller than the given number, except no change

