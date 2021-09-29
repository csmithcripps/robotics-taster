clear variables
close all
addpath("./penguinpi-robot")
%% Constants
Kh = 0.2;
Kv = 0.05;

%       x,      y
map = [0 ,    0;    % Landmark 1
       1,       0;      % Landmark 2
       2,     0;    % Landmark 3
       0,       1;      % Landmark 4
       2,       1;      % Landmark 5
       0,     2;    % Landmark 6
       1,       2;      % Landmark 7
       2,     2];   % Landmark 8
   
goal = [1, 1];
        
%% Initialisation
% Init Pibot
pb = PiBot('172.19.232.167');
pb.resetEncoder

% Initial values
mu = [0 0 0];
Sigma = diag([0.001 0.001 1*pi/180]).^2;

prevEncoder = [0 0];
r = sqrt(0.5^2 + 0.5^2);

while (r>0.1)
    %% Predict  
    % Update Encoder   

    %% Update

    %% Control Robot
    % Drive toward goal
end
    
pb.stop




%% End Program
disp('Press <Enter> to exit')
pause
close all