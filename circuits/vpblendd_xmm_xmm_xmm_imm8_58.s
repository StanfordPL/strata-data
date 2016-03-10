  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label           
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  vpaddd %xmm3, %xmm3, %xmm1                      #  3     0xa   4      OPC=vpaddd_xmm_xmm_xmm    
  vpbroadcastd %xmm8, %ymm4                       #  4     0xe   5      OPC=vpbroadcastd_ymm_xmm  
  vphaddd %xmm1, %xmm10, %xmm6                    #  5     0x13  5      OPC=vphaddd_xmm_xmm_xmm   
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  6     0x18  5      OPC=callq_label           
  retq                                            #  7     0x1d  1      OPC=retq                  
                                                                                                  
.size target, .-target
