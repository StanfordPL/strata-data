  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP  Bytes  Opcode                     
.target:                             #        0    0      OPC=<label>                
  vunpcklps %ymm3, %ymm2, %ymm1      #  1     0    4      OPC=vunpcklps_ymm_ymm_ymm  
  callq .move_byte_7_of_ymm1_to_r8b  #  2     0x4  5      OPC=callq_label            
  callq .move_r8b_to_byte_7_of_ymm1  #  3     0x9  5      OPC=callq_label            
  retq                               #  4     0xe  1      OPC=retq                   
                                                                                     
.size target, .-target
