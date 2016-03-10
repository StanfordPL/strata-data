  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode             
.target:          #        0    0      OPC=<label>        
  clc             #  1     0    1      OPC=clc            
  setae %bl       #  2     0x1  3      OPC=setae_r8       
  setnb %al       #  3     0x4  3      OPC=setnb_r8       
  xchgw %ax, %bx  #  4     0x7  3      OPC=xchgw_r16_r16  
  retq            #  5     0xa  1      OPC=retq           
                                                          
.size target, .-target
