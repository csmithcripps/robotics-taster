# Controlling the Robot

[Directory](Directory.md)

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
