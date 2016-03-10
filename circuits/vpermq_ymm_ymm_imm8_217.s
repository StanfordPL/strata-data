  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9     #  1     0     5      OPC=callq_label            
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label            
  vpbroadcastq %xmm9, %ymm4             #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm   
  vunpckhpd %ymm2, %ymm4, %ymm1         #  4     0xf   4      OPC=vunpckhpd_ymm_ymm_ymm  
  movlhps %xmm13, %xmm1                 #  5     0x13  4      OPC=movlhps_xmm_xmm        
  retq                                  #  6     0x17  1      OPC=retq                   
                                                                                         
.size target, .-target
