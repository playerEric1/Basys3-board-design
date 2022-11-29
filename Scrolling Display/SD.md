# Scrolling Display

## Components in design
### Source1: clock_divider
This component is responsible to take the on-board 450MHz clock input and divide it so that the
period of the resulting clock is about 1 sec. We will call this new clock as message_clk. This will
control how fast or slow your message will scroll on the four 7-segment displays.

Input : clk (std_logic)

Output : message_clk (std_logic)

```VHDL
architecture Behavioral of clock_divider is
--Create a signal called "count" (26 bit vector) here.
--Look at previous signal declaration examples to do this.
begin
process(clk)
begin
 if (clk'event and clk='1') then
 count <= count + 1;
 end if;
end process;
 --Assign the 24th bit of the signal count to the output message_clk.
end Behavioral;
```

### Source2: Counter_4bit

If enable is active ('1'), the counter increments its value with time, else it remains at the
same value.

<ul>
<li> When clear_n is active ('0'), the counter resets to zero "0000"</li>
<li> initial_value is a 4-bit signal that is used to load an arbitrary value into the counter
(std_logic_vector)</li>
<li> load_n (active low input) loads the initial_value input signal into the counter</li>
<li> counter_output is the 4-bit counter output (std_logic_vector)</li>
</ul>

### Source3-6: Display_Driver1-4

An example of scrolling display:
```
- - - E
- - E C
- E C S
E C S E
C S E -
S E - -
E - - -
- - - -
```
This scrolling message should continue to scroll in a loop.
Each column above corresponds to each display driver

### Source7: LEDdisplay.vhd

This component is used to switch between the outputs of display_driver1-4

### Source8: Toplevel.vhd
```VHDL
Instance_name: Component_name PORT MAP
 (portname1=> connection1,
.
.
.
 portnameN=> connectionN);
 ```

Instance_name -> user defined name

Component_name -> name of the component that is being port mapped

portname1,portname2...-> are input and output ports of the component being port mapped

connection1, connection2.. -> Respective signals/ports of toplevel being connected to the ports
of the component.
