  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm8_xmm9     #  1     0     5      OPC=callq_label         
  vaddss %xmm2, %xmm1, %xmm3            #  2     0x5   4      OPC=vaddss_xmm_xmm_xmm  
  callq .move_256_128_ymm3_xmm12_xmm13  #  3     0x9   5      OPC=callq_label         
  haddps %xmm13, %xmm1                  #  4     0xe   5      OPC=haddps_xmm_xmm      
  unpckhps %xmm3, %xmm9                 #  5     0x13  4      OPC=unpckhps_xmm_xmm    
  unpckhps %xmm9, %xmm1                 #  6     0x17  4      OPC=unpckhps_xmm_xmm    
  retq                                  #  7     0x1b  1      OPC=retq                
                                                                                      
.size target, .-target
