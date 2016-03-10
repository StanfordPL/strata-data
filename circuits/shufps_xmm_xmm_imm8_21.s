  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  maxss %xmm8, %xmm1                              #  2     0x5   5      OPC=maxss_xmm_xmm      
  vmovshdup %xmm1, %xmm8                          #  3     0xa   4      OPC=vmovshdup_xmm_xmm  
  punpckldq %xmm2, %xmm9                          #  4     0xe   5      OPC=punpckldq_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  5     0x13  5      OPC=callq_label        
  retq                                            #  6     0x18  1      OPC=retq               
                                                                                               
.size target, .-target
