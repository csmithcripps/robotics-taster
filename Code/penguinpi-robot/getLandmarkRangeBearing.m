function [distance, angle] = getLandmarkRangeBearing(height, xPx)
    
        % Constants
        focalLen = 3.04 * 10^-3;  % m
        landmarkHeight = 0.07;   % m
        pixSize = 11.5 * 10^-6; % m
        imWidth = 320;         % px
        xFov = deg2rad(62.2);   % rad

        % Find Range
        distance = (landmarkHeight / (height * pixSize)) * focalLen * 1.02;

        % Find Bearing
        angle = wrapToPi(-(xFov/2) * (xPx - (imWidth/2)) / (imWidth/2)) ;
        
end