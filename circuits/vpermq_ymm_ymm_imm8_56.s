  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vpbroadcastq %xmm2, %ymm10            #  1     0     5      OPC=vpbroadcastq_ymm_xmm     
  vmovdqu %ymm10, %ymm13                #  2     0x5   5      OPC=vmovdqu_ymm_ymm          
  vpunpckhqdq %ymm2, %ymm2, %ymm12      #  3     0xa   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  4     0xe   5      OPC=callq_label              
  vunpcklpd %ymm13, %ymm12, %ymm1       #  5     0x13  5      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                                  #  6     0x18  1      OPC=retq                     
                                                                                           
.size target, .-target
