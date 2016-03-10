  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode               
.target:                             #        0    0      OPC=<label>          
  movhlps %xmm1, %xmm1               #  1     0    3      OPC=movhlps_xmm_xmm  
  callq .move_byte_6_of_ymm1_to_r8b  #  2     0x3  5      OPC=callq_label      
  movzbq %r8b, %rbx                  #  3     0x8  4      OPC=movzbq_r64_r8    
  retq                               #  4     0xc  1      OPC=retq             
                                                                               
.size target, .-target
