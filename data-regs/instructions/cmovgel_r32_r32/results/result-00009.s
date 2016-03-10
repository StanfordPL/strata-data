  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP  Bytes  Opcode               
.target:                           #        0    0      OPC=<label>          
  cmovnll %ecx, %ebx               #  1     0    3      OPC=cmovnll_r32_r32  
  callq .move_032_016_ebx_r8w_r9w  #  2     0x3  5      OPC=callq_label      
  callq .move_016_032_r8w_r9w_ebx  #  3     0x8  5      OPC=callq_label      
  retq                             #  4     0xd  1      OPC=retq             
                                                                             
.size target, .-target
