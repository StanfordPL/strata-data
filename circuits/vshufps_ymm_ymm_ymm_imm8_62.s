  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  callq .move_256_128_ymm3_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vpbroadcastd %xmm9, %ymm10          #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm     
  vpbroadcastd %xmm8, %ymm13          #  3     0xa   5      OPC=vpbroadcastd_ymm_xmm     
  punpckhdq %xmm13, %xmm10            #  4     0xf   5      OPC=punpckhdq_xmm_xmm        
  vunpckhps %ymm10, %ymm3, %ymm1      #  5     0x14  5      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpckhqdq %ymm1, %ymm2, %ymm1     #  6     0x19  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                #  7     0x1d  1      OPC=retq                     
                                                                                         
.size target, .-target
