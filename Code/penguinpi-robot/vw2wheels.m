function wheelVel = vw2wheels(vw)
    % Inputs:
    % vw is the velocity vector (v, omega) in units of metres/s and
    % radians/s
    % Return:
    % wheelVel is the wheel velocity vector (vleft, vright) each in the
    % range -100 to +100 to achieve
    % this velocity
    
    % Constants
    r_wheel = 0.0325; % metres
    r_base  = 0.08;   % metres
 
    % Extract values
    v_robot = vw(1);
    w_robot = vw(2);
    
    % Calculate v_l and v_r by solving simultaneous equations
    v_l = v_robot - w_robot*r_base;
    v_r = 2*v_robot - v_l;
    v_wheels = [v_l v_r];
    
    % Calculate w_wheels
    w_wheels = v_wheels / r_wheel;
    
    % Convert to "power" value
    ratio = 1.2;  % percent to rpm ratio
    wheelVel = w_wheels / (pi/30) * ratio;
    
    % Apply limits
    wheelVel(wheelVel > 100) = 100;
    wheelVel(wheelVel < -100) = -100;
    
end