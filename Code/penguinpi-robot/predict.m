function [xt,S] = predict(xt,S,dTicks,R)
    %@param:
    %       xt      : State Vector
    %       S       : The Covariance matrix
    %       d       : encoder distance
    %       dth     : encoder: Change in Heading
    %       R       : Encoder Noise
    %@return:
    %       xt      : State Vector
    %       S       : The Covariance matrix
    
    dq = encoderToPose(dTicks, xt);
    if nargin < 4
        R = diag([1 90*pi/180]).^2;
    end
    xt = xt + dq;
    xt(3) = wrapToPi(xt(3));


    Jxt = [1 0 dq(2);
           0 1 dq(1);
           0 0 1];
    Jut = [cos(xt(3)) 0;
           sin(xt(3)) 0;
           0          1];
    
    S = Jxt * S * Jxt' + Jut * R * Jut';
    
    
    
end