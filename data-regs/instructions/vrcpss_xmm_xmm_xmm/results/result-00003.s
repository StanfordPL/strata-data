  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  vmovsldup %xmm3, %xmm1                          #  1     0     4      OPC=vmovsldup_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9                  #  2     0x4   5      OPC=callq_label        
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label        
  callq .move_64_128_xmm8_xmm9_xmm2               #  4     0xe   5      OPC=callq_label        
  callq .move_byte_23_of_ymm1_to_r8b              #  5     0x13  5      OPC=callq_label        
  callq .move_064_128_r8_r9_xmm1                  #  6     0x18  5      OPC=callq_label        
  rcpss %xmm2, %xmm1                              #  7     0x1d  4      OPC=rcpss_xmm_xmm      
  retq                                            #  8     0x21  1      OPC=retq               
                                                                                               
.size target, .-target
