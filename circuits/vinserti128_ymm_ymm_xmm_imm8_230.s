  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_256_128_ymm2_xmm10_xmm11          #  1     0     5      OPC=callq_label       
  callq .move_128_256_xmm10_xmm11_ymm1          #  2     0x5   5      OPC=callq_label       
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label       
  unpcklps %xmm3, %xmm7                         #  4     0xf   3      OPC=unpcklps_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x12  5      OPC=callq_label       
  retq                                          #  6     0x17  1      OPC=retq              
                                                                                            
.size target, .-target
