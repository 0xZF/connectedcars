## Meeting 2 Connected Cars

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

AT+CGMM Model Number 
AT+CNUM Phone NUmber
AT+CPIN? Sim card status
AT+COPS? View operators
AT+CSQ Signal, 99 is uknown

Need 
SIM7600E-H
SIM7600G-H






Tiny yolo working can provide demonstration. I can output object detection to csv file but 0.2 fps ???? I think tensorflow lite has better packages
webcam working with date recording etc. Just need to know how you want overall system to work and I can modify script to adjust
case doesnt work with hats.
