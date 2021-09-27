# Matlab

---

## A simple Matlab Script
```matlab
disp("Hello World")
x = input("Choose a Number: ")
y = x*10
```
---

## Variables
```matlab
x = 5;
name = Fido;
disp(x)
disp(name)
```

---

## Functions

### File 1 - add_numbers.m
```matlab
function c = add_numbers(a,b)
	c = a+b
end
```

### File 2 - our_script.m
```matlab
a = input("First Number: ");
b = input("Second Number: ");

c = add_numbers(a,b)
```

---

## Including Functions from other directories
- Could add them to the Matlab Libraries folder 
- ``` addpath("PATH TO FOLDER")```
	- This can be a relative path or absolute

---

| **Quick Links**                         |
| [The Task](The_Task.md)                 |
| [Matlab Refresher](Matlab_Refresher.md) |
| [Robot Code](Robot_Code.md)             |
| [Setup](Setup.md)                       |
| [Prediction](Prediction.md)             |
| [Update](Update.md)                     | 
| [Final Code](Final_Code.md)             |