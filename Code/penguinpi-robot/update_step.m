function [x,S] = update_step(landmarkID,z,x,S,map, Q)
    %@param:
    %           map         : location of all landmarks
    %           z           : known range and bearings
    %           x,S         : the current estimate of the robot.
    %           Q           : the covariance of the measurements
    %@return:
    %           x           : State Vector
    %           S           : The Covariance matrix of all landmarks
    
    if nargin < 6
        Q = diag([0.08 2*pi/180]).^2;
    end
    
    
    i = landmarkID;
    
    %Init Values from map and data
    xl = map(i,1);
    yl = map(i,2);
    xr = x(1);
    yr = x(2);
    
    %Calc Theorectical Range/Bearing
    r  = sqrt((xr - xl)^2 + (yr - yl)^2);
    beta = wrapToPi(atan2(yl - yr, xl - xr) - x(3));
    
    %Intermediate EKF Calcs
    G = [-((xl-xr)/r), -((yl-yr)/r) 0;
         ((yl-yr)/r),  -((xl-xr)/r) -1];

    K = S*G' *(G*S*G' + Q)^-1;

    b = (z - [r; beta]);
    b(2) = wrapToPi(b(2));
    
    %Propogate Gaussian
    x = x + K*b;
    x(3) = wrapToPi(x(3));

    S = (eye(3) - K*G)*S;
    
    
end    