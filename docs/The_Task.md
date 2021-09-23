# The Task

[Directory](Directory.md)

---

## Context
Navigate to the centre of a set of markers
**""CONTEXT""**

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
	- Use the previous information to predict the robots position
2.  Sensing
	- Gather information from sensors
3.  Update
	- Combine the prediction and sensor information
	- We do this because sensors aren't perfect

---