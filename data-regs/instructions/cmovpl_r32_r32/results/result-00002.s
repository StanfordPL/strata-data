  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP  Bytes  Opcode               
.target:                             #        0    0      OPC=<label>          
  cmovpel %ecx, %ebx                 #  1     0    3      OPC=cmovpel_r32_r32  
  callq .move_064_032_rbx_r10d_r11d  #  2     0x3  5      OPC=callq_label      
  xaddw %bx, %r10w                   #  3     0x8  5      OPC=xaddw_r16_r16    
  retq                               #  4     0xd  1      OPC=retq             
                                                                               
.size target, .-target
