  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm3_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  callq .move_256_128_ymm2_xmm8_xmm9    #  3     0xa   5      OPC=callq_label            
  vunpckhps %xmm13, %xmm9, %xmm12       #  4     0xf   5      OPC=vunpckhps_xmm_xmm_xmm  
  vmovaps %ymm12, %ymm13                #  5     0x14  5      OPC=vmovaps_ymm_ymm        
  vunpckhps %xmm3, %xmm10, %xmm12       #  6     0x19  4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  7     0x1d  5      OPC=callq_label            
  retq                                  #  8     0x22  1      OPC=retq                   
                                                                                         
.size target, .-target
