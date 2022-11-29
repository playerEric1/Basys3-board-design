# Four Bit Adder

## 1-bit full adder: bit_full_adder.vhd
Inputs: A, B, Cin. 

Outputs: S, Cout.

Include the expressions for sum and carry out of the 1 bit full adder.
## display_driver: Display_driver.vhd
This component takes in a 4-bit input and
outputs 7 bits controlling the 7 segments. 
## LEDdisplay: LEDdisplay.vhd
This component is used to switch between the outputs of display_driver1 and display_driver2 on
two different 7-segment displays (refer the block diagram attached on Piazza; most useful
resource for this studio).

## Toplevel Entity: 
The overall inputs and outputs shown in the block diagram are the I/O to the dashed box, i.e. 8 slide switches, carry_in, clock, anodes, segments.

### Toplevel Architecture: This can be divided into three steps.
1. __Component Declaration__ (before begin statement): Each unique component used in your
design should be declared here.
1. __Signal Declaration__ (before begin statement): Every output in your design that is not the
final output needs to be declared as a signal. That is, all intermediate outputs.
1. __Component Instantiation/Port Mapping__ (after begin statement): This is where all the interconnections between components are made. Example of a port mapping statement
below:

```VHDL
Arbitrary_Unique_Label: Name_of_component port map ([input/output variable inside
the component] => [variable outside the component]);
```