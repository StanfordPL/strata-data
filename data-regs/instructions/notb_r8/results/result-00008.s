  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  xorq %r13, %r13    #  1     0    3      OPC=xorq_r64_r64   
  movzbw %r13b, %ax  #  2     0x3  5      OPC=movzbw_r16_r8  
  decb %al           #  3     0x8  2      OPC=decb_r8        
  xorb %al, %bl      #  4     0xa  2      OPC=xorb_r8_r8     
  retq               #  5     0xc  1      OPC=retq           
                                                             
.size target, .-target
