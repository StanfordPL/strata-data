  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP  Bytes  Opcode               
.target:                             #        0    0      OPC=<label>          
  callq .move_064_032_rbx_r12d_r13d  #  1     0    5      OPC=callq_label      
  cmovpol %r12d, %ecx                #  2     0x5  4      OPC=cmovpol_r32_r32  
  xaddl %ebx, %ecx                   #  3     0x9  3      OPC=xaddl_r32_r32    
  retq                               #  4     0xc  1      OPC=retq             
                                                                               
.size target, .-target
