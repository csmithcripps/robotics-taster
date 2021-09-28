function plot_map(x, map, img)
    clf
    subplot(2,1,1)
    hold on 
    scatter(x(1), x(2), 'r*')
    for i = 1:8
        scatter(map(i,1), map(i,2), 'g.')
    end
    subplot(2,1,2)
    imshow(img)
end