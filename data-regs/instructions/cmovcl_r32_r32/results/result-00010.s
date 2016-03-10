  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode               
.target:             #        0    0      OPC=<label>          
  setb %dh           #  1     0    3      OPC=setb_rh          
  decb %dh           #  2     0x3  2      OPC=decb_rh          
  cmovnzw %cx, %cx   #  3     0x5  4      OPC=cmovnzw_r16_r16  
  cmovbl %ecx, %ebx  #  4     0x9  3      OPC=cmovbl_r32_r32   
  retq               #  5     0xc  1      OPC=retq             
                                                               
.size target, .-target
