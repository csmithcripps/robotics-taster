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
    encoder = pb.getEncoder; 
    dTicks = encoder - prevEncoder;
    prevEncoder = encoder;
    
    [mu,Sigma] = predict(mu,Sigma,dTicks);

    %% Update
	img = pb.getImage();
	landmarks = detectLandmarks(img);
    
	[mu, Sigma] = update(mu, Sigma, landmarks, map);

    %% Control Robot
    % Drive toward goal
    vel = controlPoint(mu,goal, Kh, Kv);  % compute the wheel speeds given the current configuration
    pb.setVelocity(vel)
    
    r = sqrt((goal(1)-mu(1))^2 + (goal(2)-mu(2))^2);
    pause(0.05)
    pb.stop
    hold on
    plot_map(mu, map, img)
    drawnow
end
    
pb.stop




%% End Program
disp('Press <Enter> to exit')
pause
close all