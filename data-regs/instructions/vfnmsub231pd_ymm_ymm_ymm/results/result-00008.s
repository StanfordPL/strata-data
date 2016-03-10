  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  callq .move_byte_9_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label               
  callq .move_r8b_to_byte_9_of_ymm1  #  2     0x5   5      OPC=callq_label               
  vfnmsub132pd %ymm3, %ymm1, %ymm2   #  3     0xa   5      OPC=vfnmsub132pd_ymm_ymm_ymm  
  vmaxps %ymm2, %ymm2, %ymm1         #  4     0xf   4      OPC=vmaxps_ymm_ymm_ymm        
  retq                               #  5     0x13  1      OPC=retq                      
                                                                                         
.size target, .-target
