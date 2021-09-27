# Prediction

**Have you ever tried walking with your eyes closed?**
- Robots 2 ways of viewing the world
	- Internal sensors (Encoders, Gyroscopes, Accelerometers)
	- External sensors (GPS, cameras, LIDARS)
The prediction step uses the internal sensors of the robot, in our case the motor encoders, to take a guess at where it is.

---

```matlab
encoder = pb.getEncoder; 
dTicks = encoder - prevEncoder;
prevEncoder = encoder;

[mu,Sigma] = predict(mu,Sigma,dTicks);
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
