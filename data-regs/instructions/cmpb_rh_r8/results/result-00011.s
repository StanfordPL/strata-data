  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  xorb %al, %al     #  1     0    2      OPC=xorb_r8_r8       
  setng %al         #  2     0x2  3      OPC=setng_r8         
  popcntw %ax, %di  #  3     0x5  5      OPC=popcntw_r16_r16  
  sbbb %bl, %ah     #  4     0xa  2      OPC=sbbb_rh_r8       
  retq              #  5     0xc  1      OPC=retq             
                                                              
.size target, .-target
