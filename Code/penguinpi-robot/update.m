function [mu, Sigma] = update(mu, Sigma, landmarks, map)

    for j = 1:size(landmarks,1)
        [r,b] = getLandmarkRangeBearing(landmarks(j,2),landmarks(j,3));
        [mu,Sigma] = update_step(landmarks(j,1),[r;b],mu,Sigma, map);    
    end
end