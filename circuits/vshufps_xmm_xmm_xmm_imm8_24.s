  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vpbroadcastq %xmm2, %ymm4                       #  1     0     5      OPC=vpbroadcastq_ymm_xmm   
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  punpckhdq %xmm2, %xmm4                          #  3     0xa   4      OPC=punpckhdq_xmm_xmm      
  punpckldq %xmm8, %xmm9                          #  4     0xe   5      OPC=punpckldq_xmm_xmm      
  vunpcklpd %xmm9, %xmm4, %xmm1                   #  5     0x13  5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                            #  6     0x18  1      OPC=retq                   
                                                                                                   
.size target, .-target
