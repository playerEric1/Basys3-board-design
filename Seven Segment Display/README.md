# Seven Segment Display

Use Xilinx Vivado software to implement a generic 7-segment output component, and
use it to provide output for a 4-bit input. 
The FPGA board's slide switches will be used for inputting a 4-bit binary number, and the
hexadecimal equivalent outputted on one of the seven segment displays.

These can be declared in the ENTITY of your design either as individual pins or as a vector/bus
(See example below).

```VHDL
ENTITY toplevel is
Port (switches : in STD_LOGIC_VECTOR (3 downto 0));
end toplevel;
```

The above example creates a 4-bit bus of switches with each pin named as switches<0>,
switches<1>, switches<2>, and switches<3>. You can use this form of port usage for switches as
well as for the 7 segments and anodes.

__Outputs__ to the 7 segment display driver. A seven segment display is composed of seven
individual light emitting diodes denoted by the letters A through G as in figure below:

<ul>
<li>AN0 (U2 in constraints)</li>
<li>AN1 (U4 in constraints)</li>
<li>AN2 (V4 in constraints)</li>
<li>AN3 (W4 in constraints)</li>
<li>SegA (W7 in constraints)</li>
<li>SegB (W6 in constraints)</li>
<li>SegC (U8 in constraints)</li>
<li>SegD (V8 in constraints)</li>
<li>SegE (U5 in constraints)</li>
<li>SegF (V5 in constraints)</li>
<li>SegG (U7 in constraints)</li>
</ul>

All the outputs mentioned above have negative logic (Active low outputs). Active low means the
binary output variable is considered active or enabled when it is low.
