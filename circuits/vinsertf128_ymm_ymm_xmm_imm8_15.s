  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_64_xmm3_xmm12_xmm13           #  1     0     5      OPC=callq_label        
  vmovaps %xmm3, %xmm13                         #  2     0x5   4      OPC=vmovaps_xmm_xmm    
  callq .move_128_256_xmm12_xmm13_ymm3          #  3     0x9   5      OPC=callq_label        
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  4     0xe   5      OPC=callq_label        
  vmovaps %ymm2, %ymm1                          #  5     0x13  4      OPC=vmovaps_ymm_ymm    
  vorps %xmm1, %xmm7, %xmm12                    #  6     0x17  4      OPC=vorps_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1          #  7     0x1b  5      OPC=callq_label        
  retq                                          #  8     0x20  1      OPC=retq               
                                                                                             
.size target, .-target
