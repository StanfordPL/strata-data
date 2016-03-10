  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  shrxl %ecx, %ebx, %r12d  #  1     0    5      OPC=shrxl_r32_r32_r32  
  rorb $0x1, %r12b         #  2     0x5  3      OPC=rorb_r8_one        
  retq                     #  3     0x8  1      OPC=retq               
                                                                       
.size target, .-target
