  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP  Bytes  Opcode              
.target:                             #        0    0      OPC=<label>         
  cmoval %ebx, %ecx                  #  1     0    3      OPC=cmoval_r32_r32  
  callq .move_032_016_ecx_r12w_r13w  #  2     0x3  5      OPC=callq_label     
  callq .move_016_032_r12w_r13w_ebx  #  3     0x8  5      OPC=callq_label     
  retq                               #  4     0xd  1      OPC=retq            
                                                                              
.size target, .-target
