  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vorps %xmm11, %xmm9, %xmm1                      #  2     0x5   5      OPC=vorps_xmm_xmm_xmm     
  unpcklps %xmm9, %xmm10                          #  3     0xa   4      OPC=unpcklps_xmm_xmm      
  movshdup %xmm3, %xmm3                           #  4     0xe   4      OPC=movshdup_xmm_xmm      
  vpbroadcastd %xmm3, %ymm11                      #  5     0x12  5      OPC=vpbroadcastd_ymm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1             #  6     0x17  5      OPC=callq_label           
  retq                                            #  7     0x1c  1      OPC=retq                  
                                                                                                  
.size target, .-target
