  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  setge %bpl         #  1     0    4      OPC=setge_r8        
  decb %bpl          #  2     0x4  3      OPC=decb_r8         
  clc                #  3     0x7  1      OPC=clc             
  cmoval %ecx, %ebx  #  4     0x8  3      OPC=cmoval_r32_r32  
  retq               #  5     0xb  1      OPC=retq            
                                                              
.size target, .-target
