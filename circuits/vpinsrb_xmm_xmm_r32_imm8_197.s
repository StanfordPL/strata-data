  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode               
.target:                             #        0    0      OPC=<label>          
  callq .move_032_016_ebx_r8w_r9w    #  1     0    5      OPC=callq_label      
  vmovdqa %xmm2, %xmm1               #  2     0x5  4      OPC=vmovdqa_xmm_xmm  
  callq .move_r8b_to_byte_5_of_ymm1  #  3     0x9  5      OPC=callq_label      
  retq                               #  4     0xe  1      OPC=retq             
                                                                               
.size target, .-target
