  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label           
  callq .move_128_64_xmm1_xmm8_xmm9               #  2     0x5   5      OPC=callq_label           
  vpbroadcastd %xmm7, %ymm14                      #  3     0xa   5      OPC=vpbroadcastd_ymm_xmm  
  movupd %xmm14, %xmm1                            #  4     0xf   5      OPC=movupd_xmm_xmm        
  callq .move_128_64_xmm1_xmm10_xmm11             #  5     0x14  5      OPC=callq_label           
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x19  5      OPC=callq_label           
  retq                                            #  7     0x1e  1      OPC=retq                  
                                                                                                  
.size target, .-target
