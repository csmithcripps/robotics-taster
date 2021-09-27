# Controlling the Robot

|               **Quick Links**            |
|         [The Task](The_Task.md)         |
| [Matlab Refresher](Matlab_Refresher.md) |
|       [Robot Code](Robot_Code.md)       |
|       [Final Code](Final_Code.md)       |


---

## Connecting

```matlab
pb = PiBot('192.168.1.141');
```

---

## Motor Control

```matlab
pb.setMotorSpeeds(0,0);
```

---

## Camera Data

```matlab
img = pb.getImageFromCamera();
```

---

## Encoder Data

```matlab
ticks = pb.getMotorTicks();
```

---

## LED Array
```matlab
v = 0b0000000000000001 % Light up only the last LED
pb.setLEDArray(v)
```