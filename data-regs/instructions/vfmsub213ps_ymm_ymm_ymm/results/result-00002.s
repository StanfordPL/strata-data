  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vfmsub132ps %ymm1, %ymm3, %ymm2       #  1     0     5      OPC=vfmsub132ps_ymm_ymm_ymm  
  vminpd %ymm2, %ymm3, %ymm12           #  2     0x5   4      OPC=vminpd_ymm_ymm_ymm       
  callq .move_256_128_ymm2_xmm12_xmm13  #  3     0x9   5      OPC=callq_label              
  vmaxpd %ymm12, %ymm2, %ymm1           #  4     0xe   5      OPC=vmaxpd_ymm_ymm_ymm       
  retq                                  #  5     0x13  1      OPC=retq                     
                                                                                           
.size target, .-target
