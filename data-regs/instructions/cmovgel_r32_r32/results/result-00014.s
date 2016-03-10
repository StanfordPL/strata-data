  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP  Bytes  Opcode               
.target:                             #        0    0      OPC=<label>          
  cmovnll %ecx, %ebx                 #  1     0    3      OPC=cmovnll_r32_r32  
  callq .move_064_032_rbx_r10d_r11d  #  2     0x3  5      OPC=callq_label      
  popcntl %r11d, %edx                #  3     0x8  5      OPC=popcntl_r32_r32  
  xorb %dh, %bh                      #  4     0xd  2      OPC=xorb_rh_rh       
  retq                               #  5     0xf  1      OPC=retq             
                                                                               
.size target, .-target
