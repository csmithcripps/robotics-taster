# Setup

---

## Initial Variables


$$
\mu = \begin{bmatrix}x\\y\\\sigma\\M1_x\\M1_y\\M2_x\\M2_y\\M3_x\\M3_y\end{bmatrix} = \begin{bmatrix}0\\0\\0\\100\\200\\70\\170\\130\\170\end{bmatrix}\newline
$$
$$
\Sigma = \begin{bmatrix}
		0 & 0 & 0 & 0 & 0 & 0\\ 
		0 & 0 & 0 & 0 & 0 & 0\\
		0 & 0 & 0 & 0 & 0 & 0\\
		0 & 0 & 0 & \infty & 0 & 0\\
		0 & 0 & 0 & 0 & \infty & 0\\
		0 & 0 & 0 & 0 & 0 & \infty\\
		
		\end{bmatrix} 

$$
$$

Goal = [100, 170]

$$

---

### Code
```matlab
clear variables
close all
addpath("./penguinpi-robot")
%% Constants
Kh = 0.4;
Kv = 0.2;

%       x,      y
map = [0.1 ,    0.1;    % Landmark 1
       1,       0;      % Landmark 2
       1.9,     0.1;    % Landmark 3
       0,       1;      % Landmark 4
       2,       1;      % Landmark 5
       0.1,     1.9;    % Landmark 6
       1,       2;      % Landmark 7
       1.9,     1.9];   % Landmark 8
   
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

while r < 0.25
	% Prediction
	
	% Update
	
	% Control
	
end
pb.stop
```

---

| **Quick Links**                         |
| [The Task](The_Task.md)                 |
| [Matlab Refresher](Matlab_Refresher.md) |
| [Robot Code](Robot_Code.md)             |
| [Setup](Setup.md)                       |
| [Prediction](Prediction.md)             |
| [Update](Update.md)                     | 
| [Final Code](Final_Code.md)             |