  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm3_xmm8_xmm9    #  1     0     5      OPC=callq_label            
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  vunpckhpd %ymm3, %ymm2, %ymm1         #  3     0xa   4      OPC=vunpckhpd_ymm_ymm_ymm  
  vmovlhps %xmm11, %xmm8, %xmm9         #  4     0xe   5      OPC=vmovlhps_xmm_xmm_xmm   
  vmovupd %ymm2, %ymm8                  #  5     0x13  4      OPC=vmovupd_ymm_ymm        
  callq .move_64_128_xmm8_xmm9_xmm1     #  6     0x17  5      OPC=callq_label            
  retq                                  #  7     0x1c  1      OPC=retq                   
                                                                                         
.size target, .-target
