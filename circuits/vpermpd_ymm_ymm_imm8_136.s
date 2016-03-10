  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vmovupd %ymm2, %ymm3                  #  1     0     4      OPC=vmovupd_ymm_ymm        
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x4   5      OPC=callq_label            
  vpbroadcastq %xmm3, %ymm3             #  3     0x9   5      OPC=vpbroadcastq_ymm_xmm   
  vpbroadcastq %xmm13, %ymm2            #  4     0xe   5      OPC=vpbroadcastq_ymm_xmm   
  vunpcklpd %ymm2, %ymm3, %ymm1         #  5     0x13  4      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                                  #  6     0x17  1      OPC=retq                   
                                                                                         
.size target, .-target
