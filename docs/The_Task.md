# The Task
---

## Context
You've been tasked to give a rover stranded on mars the means to navigate back to it's extraction point.
Markers have been dropped in the environment in the eight major directions. The extraction point is at the center of these markers.


---

## Map

![Pasted image 20210921024101](Attachments/Pasted%20image%2020210921024101.png)

---

## Introducing SLAM

SLAM or Simultaneous Localisation and Mapping.

Using Kalman Filter the robot views the world as a set of probabilities because it is never 100% sure of it's information.

---

Two important variables

![Mu](https://latex.codecogs.com/png.latex?%5Cdpi%7B200%7D%20%5Cbg_black%20%5Cmu%20%3D%20%5Cbegin%7Bbmatrix%7Dx%5C%5Cm%5Cend%7Bbmatrix%7D)

 - Which is our map of the world (x being our understanding of the robot, and m being the known locations of the landmarks)

![Sigma](https://latex.codecogs.com/png.latex?%5Cdpi%7B200%7D%20%5Cbg_black%20%5CSigma%20%3D%20%5Cbegin%7Bbmatrix%7D...%5C%5C...%5Cend%7Bbmatrix%7D)

- A 2D matrix of our uncertainties

---

## Steps

1.  Prediction
	- Using internal sensors to guess how much the robot has moved
2.  Update
	- Using sensors to update our assumptions about ourselves and our environment
3.  Control

### SLAM Simplified
 - Simplified using a known map
 - Map Assisted Localisation and Navigation
 
---

| **Quick Links**                         |
| [The Task](The_Task.md)                 |
| [Matlab Refresher](Matlab_Refresher.md) |
| [Robot Code](Robot_Code.md)             |
| [Setup](Setup.md)                       |
| [Prediction](Prediction.md)             |
| [Update](Update.md)                     | 
| [Final Code](Final_Code.md)             |