# Decoders and Encoders
An implementation of two popular ICs, __74x138__ (3: 8 decoder)
and __74x148__ (8:3 priority encoder), and finally implement an arbitrary logic function using the
__74x138__ decoder and NAND gates. 


__Decoders__ are combinatorial circuits which have multiple outputs. They are widely used in
memory chips to select one of the words addressed by the address input. For example, an 8-word memory will have three bit address input. The decoder will decode the 3-bit address and
generate a select line for one of the eight words corresponding to the input address. 

__The first part is a implementation of 3:8 decoder [74X138](https://www.ti.com/lit/ds/symlink/74ac11138.pdf?ts=1669681670967&ref_url=https%253A%252F%252Fwww.google.com%252F) using behavioral
modeling__