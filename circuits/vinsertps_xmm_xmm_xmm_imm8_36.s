  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  vpmovzxdq %xmm3, %ymm6                          #  1     0     5      OPC=vpmovzxdq_ymm_xmm   
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label         
  subsd %xmm10, %xmm10                            #  3     0xa   5      OPC=subsd_xmm_xmm       
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3  #  4     0xf   5      OPC=callq_label         
  vpsubq %xmm6, %xmm3, %xmm1                      #  5     0x14  4      OPC=vpsubq_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x18  5      OPC=callq_label         
  retq                                            #  7     0x1d  1      OPC=retq                
                                                                                                
.size target, .-target
