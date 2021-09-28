function landmarks = detectLandmarks(img)

    tagFamily = ["tag36h11","tagCircle21h7","tagCircle49h12","tagCustom48h12","tagStandard41h12"];
    
    [id,loc] = readAprilTag(img,tagFamily);
    
    disp(id)
    landmarks = zeros(length(id), 4);
    for i = 1:length(id)
        if id(i) > 7 || id(i)<0
            continue
        end
        landmarkID = id(i)+1;
        height = max(loc(:,2,i)) - min(loc(:,2,i));
        xPx = mean(loc(:,1,i));
        yPx = mean(loc(:,2,i));
        landmarks(i,:) = [landmarkID, height, xPx, yPx];
    end
    
    

end