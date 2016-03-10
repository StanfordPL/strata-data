  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  movshdup %xmm10, %xmm8                          #  2     0x5   5      OPC=movshdup_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm3              #  3     0xa   5      OPC=callq_label       
  cvtdq2pd %xmm3, %xmm1                           #  4     0xf   4      OPC=cvtdq2pd_xmm_xmm  
  retq                                            #  5     0x13  1      OPC=retq              
                                                                                              
.size target, .-target
