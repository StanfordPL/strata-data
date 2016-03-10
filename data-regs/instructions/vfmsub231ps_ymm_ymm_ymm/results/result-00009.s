  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vfmsub132ps %ymm3, %ymm1, %ymm2    #  1     0     5      OPC=vfmsub132ps_ymm_ymm_ymm  
  callq .move_128_64_xmm2_xmm8_xmm9  #  2     0x5   5      OPC=callq_label              
  vminpd %ymm2, %ymm2, %ymm1         #  3     0xa   4      OPC=vminpd_ymm_ymm_ymm       
  callq .move_64_128_xmm8_xmm9_xmm1  #  4     0xe   5      OPC=callq_label              
  retq                               #  5     0x13  1      OPC=retq                     
                                                                                        
.size target, .-target
