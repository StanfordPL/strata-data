  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vmovsldup %ymm2, %ymm5              #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vorps %ymm5, %ymm5, %ymm1           #  2     0x4   4      OPC=vorps_ymm_ymm_ymm        
  callq .move_byte_15_of_ymm1_to_r9b  #  3     0x8   5      OPC=callq_label              
  callq .move_r9b_to_byte_2_of_ymm1   #  4     0xd   5      OPC=callq_label              
  vpunpckhqdq %ymm1, %ymm5, %ymm1     #  5     0x12  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                #  6     0x16  1      OPC=retq                     
                                                                                         
.size target, .-target
