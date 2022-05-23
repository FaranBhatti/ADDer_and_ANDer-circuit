# ADDer_and_ANDer circuit


##Inputs:
- not_LEFT_pushbutton (represented by KEY1 on the De1-SoC, AND operation)
- not_RIGHT_pushbutton (represented by KEY0 on the De1-SoC, ADD operation)
- [3:0] A (input from first 4 switches on the board SW0-SW3)
- [3:0] B (input from second set of 4 switches on the board SW4-SW7)


##Outputs:
- [3:0] result (output which is either (A&B) or (A+B) depending on the buttons we press.


##Description:

Goal is to add or and inputs A and B depending on which pushbutton is pressed. If both pushbuttons are pressed simultaneously then the right pushbutton takes priority which adds the inputs A and B. 

The implementation of this is done on the De1-SoC Cyclone 5 FPGA.
