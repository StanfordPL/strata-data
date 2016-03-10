  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vmovapd %xmm2, %xmm4                  #  2     0x5   4      OPC=vmovapd_xmm_xmm        
  vpbroadcastq %xmm4, %ymm1             #  3     0x9   5      OPC=vpbroadcastq_ymm_xmm   
  callq .move_64_128_xmm12_xmm13_xmm2   #  4     0xe   5      OPC=callq_label            
  vunpckhpd %ymm1, %ymm2, %ymm1         #  5     0x13  4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                                  #  6     0x17  1      OPC=retq                   
                                                                                         
.size target, .-target
