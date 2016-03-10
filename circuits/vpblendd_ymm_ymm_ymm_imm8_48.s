  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label            
  vunpckhpd %ymm3, %ymm2, %ymm0     #  2     0x5   4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_064_128_r12_r13_xmm3  #  3     0x9   5      OPC=callq_label            
  vunpcklpd %ymm0, %ymm3, %ymm1     #  4     0xe   4      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                              #  5     0x12  1      OPC=retq                   
                                                                                     
.size target, .-target
