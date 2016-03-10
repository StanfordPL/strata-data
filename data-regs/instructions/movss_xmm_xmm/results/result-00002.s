  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm12_xmm13           #  1     0     5      OPC=callq_label         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label         
  vmovdqa %xmm2, %xmm11                         #  3     0xa   4      OPC=vmovdqa_xmm_xmm     
  vmovapd %xmm12, %xmm3                         #  4     0xe   5      OPC=vmovapd_xmm_xmm     
  vminps %ymm11, %ymm3, %ymm4                   #  5     0x13  5      OPC=vminps_ymm_ymm_ymm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x18  5      OPC=callq_label         
  retq                                          #  7     0x1d  1      OPC=retq                
                                                                                              
.size target, .-target
