## Meeting 2 Connected Cars

### Cellular Connection

Confirmed that problem with cellular connection is incompatible hat.
minicom -D /dev/ttyUSB2

```
SIM7600A-H
LTE-FDD : B2/B4/B12

Australia Networks
3G: B5,B8
4G: B28,B8,B3,B1,B7,B40,B5

```
AT Commands to test

```
AT+CGMM Model Number 
AT+CNUM Phone NUmber
AT+CPIN? Sim card status
AT+COPS? View operators
AT+CSQ Signal, 99 is uknown
```

Need 
SIM7600E-H
SIM7600G-H

### Object Detection
Minimum FPS for object detection?

opencv based object detection?
tiny yolo v3 working but its quite slow. tiny yolo v4 does not use opencv 

could get usb gpu accelerator? use a non opencv based object detection package? bear in mind I do not have much experience in object detection algorithms etc.

How will csv uploading work? it is fairly trivial to pipe output of object detection to a csv file as well as time stamps.
When do you want to start recording dash cam, object detection etc. 

Dead reckoning will work this weekend 
OBDII Emulate with python for now, test car later or do you want something that we can use for future use?
fairly trivial just need to install a package that reads the data.

How do you want overall system to work? csv entry added every second ? 

### To complete before next week 

Purchase compatible cellular hat
Find out why sparkfun gps doesnt work
Work on OBDII
Assign tasks to people
