  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode          
.target:          #        0    0      OPC=<label>     
  xorb %al, %al   #  1     0    2      OPC=xorb_r8_r8  
  clc             #  2     0x2  1      OPC=clc         
  setl %r8b       #  3     0x3  4      OPC=setl_r8     
  adcb %r8b, %bl  #  4     0x7  3      OPC=adcb_r8_r8  
  sbbb %bl, %ah   #  5     0xa  2      OPC=sbbb_rh_r8  
  retq            #  6     0xc  1      OPC=retq        
                                                       
.size target, .-target
