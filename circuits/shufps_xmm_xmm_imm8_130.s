  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  callq .move_128_64_xmm1_xmm12_xmm13           #  2     0x5   5      OPC=callq_label       
  unpcklps %xmm6, %xmm4                         #  3     0xa   3      OPC=unpcklps_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm2          #  4     0xd   5      OPC=callq_label       
  unpcklps %xmm2, %xmm13                        #  5     0x12  4      OPC=unpcklps_xmm_xmm  
  movdqa %xmm13, %xmm1                          #  6     0x16  5      OPC=movdqa_xmm_xmm    
  unpcklpd %xmm4, %xmm1                         #  7     0x1b  4      OPC=unpcklpd_xmm_xmm  
  retq                                          #  8     0x1f  1      OPC=retq              
                                                                                            
.size target, .-target
