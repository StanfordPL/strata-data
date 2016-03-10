  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  movsldup %xmm2, %xmm1                           #  2     0x5   4      OPC=movsldup_xmm_xmm        
  unpckhps %xmm8, %xmm2                           #  3     0x9   4      OPC=unpckhps_xmm_xmm        
  movsldup %xmm9, %xmm12                          #  4     0xd   5      OPC=movsldup_xmm_xmm        
  vpunpckhdq %xmm1, %xmm2, %xmm13                 #  5     0x12  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1             #  6     0x16  5      OPC=callq_label             
  retq                                            #  7     0x1b  1      OPC=retq                    
                                                                                                    
.size target, .-target
