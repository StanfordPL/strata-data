  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9        #  1     0     5      OPC=callq_label           
  vmovddup %ymm2, %ymm4                 #  2     0x5   4      OPC=vmovddup_ymm_ymm      
  callq .move_256_128_ymm2_xmm12_xmm13  #  3     0x9   5      OPC=callq_label           
  vpbroadcastq %xmm13, %ymm1            #  4     0xe   5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_064_128_r8_r9_xmm1        #  5     0x13  5      OPC=callq_label           
  unpckhpd %xmm4, %xmm1                 #  6     0x18  4      OPC=unpckhpd_xmm_xmm      
  retq                                  #  7     0x1c  1      OPC=retq                  
                                                                                        
.size target, .-target
