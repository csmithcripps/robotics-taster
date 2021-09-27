function vel = controlPoint(q, goal, Kh, Kv)

    % Constants
    if nargin == 2
        Kh = 0.4;
        Kv = 0.2;
    end

    % Get values
    x_goal = goal(1);
    y_goal = goal(2);
    x = q(1);
    y = q(2);
    theta = q(3);

    % Calculate angle difference
    theta_goal = atan2(y_goal-y, x_goal-x);
    h = theta_goal - theta;
    while (h >  pi); h = h-2*pi; end
    while (h < -pi); h = h+2*pi; end

    % Calculate turning speed
    w = Kh * h;
    w = min(w, 0.5);
    w = max(w, -0.5);

    % Calculate forward speed
    e = sqrt((x_goal-x)^2 + (y_goal-y)^2);
    v = Kv * e;
    v = min(v, 0.07);

    % Calculate wheel speeds
    vw = [v w];
    vel = vw2wheels(vw);

end