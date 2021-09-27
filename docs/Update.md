# Update

Walking with your eyes open.
- External sensors - Vision
- Using AprilTags as landmarks

---

```matlab
img = pb.getImage();
landmarks = detectLandmarks(img);

[mu, Sigma] = update(mu, Sigma, landmarks, map);

% Show current robot vision
hold on 
img = insertMarker(img,landmarks(:, 3:4));
imshow(img)
drawnow
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