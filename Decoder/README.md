# Decoder
__Decoders__ are combinatorial circuits which have multiple outputs. They are widely used in
memory chips to select one of the words addressed by the address input. For example, an 8-word memory will have three bit address input. The decoder will decode the 3-bit address and
generate a select line for one of the eight words corresponding to the input address. 

__This is a implementation of 3:8 decoder [74X138](https://www.ti.com/lit/ds/symlink/74ac11138.pdf?ts=1669681670967&ref_url=https%253A%252F%252Fwww.google.com%252F) using behavioral
modeling__