  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                
.target:                             #        0     0      OPC=<label>           
  vmovddup %ymm2, %ymm1              #  1     0     4      OPC=vmovddup_ymm_ymm  
  callq .move_byte_3_of_ymm1_to_r9b  #  2     0x4   5      OPC=callq_label       
  callq .move_r9b_to_byte_4_of_ymm1  #  3     0x9   5      OPC=callq_label       
  movhlps %xmm2, %xmm1               #  4     0xe   3      OPC=movhlps_xmm_xmm   
  retq                               #  5     0x11  1      OPC=retq              
                                                                                 
.size target, .-target
