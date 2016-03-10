  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm8_xmm9    #  1     0     5      OPC=callq_label            
  vunpckhps %xmm3, %xmm2, %xmm1         #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_256_128_ymm3_xmm12_xmm13  #  3     0x9   5      OPC=callq_label            
  unpckhps %xmm13, %xmm9                #  4     0xe   4      OPC=unpckhps_xmm_xmm       
  vmovaps %xmm1, %xmm8                  #  5     0x12  4      OPC=vmovaps_xmm_xmm        
  callq .move_128_256_xmm8_xmm9_ymm1    #  6     0x16  5      OPC=callq_label            
  retq                                  #  7     0x1b  1      OPC=retq                   
                                                                                         
.size target, .-target
