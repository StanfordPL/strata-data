  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  vmovshdup %ymm3, %ymm11           #  1     0     4      OPC=vmovshdup_ymm_ymm      
  callq .move_128_064_xmm2_r12_r13  #  2     0x4   5      OPC=callq_label            
  vunpcklps %ymm11, %ymm2, %ymm3    #  3     0x9   5      OPC=vunpcklps_ymm_ymm_ymm  
  vunpckhps %ymm11, %ymm2, %ymm6    #  4     0xe   5      OPC=vunpckhps_ymm_ymm_ymm  
  vunpcklpd %ymm6, %ymm3, %ymm1     #  5     0x13  4      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_064_128_r12_r13_xmm1  #  6     0x17  5      OPC=callq_label            
  retq                              #  7     0x1c  1      OPC=retq                   
                                                                                     
.size target, .-target
