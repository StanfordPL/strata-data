  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vpmovzxdq %xmm2, %xmm8                          #  1     0     5      OPC=vpmovzxdq_xmm_xmm        
  vxorpd %xmm8, %xmm2, %xmm12                     #  2     0x5   5      OPC=vxorpd_xmm_xmm_xmm       
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label              
  vpunpcklqdq %ymm8, %ymm12, %ymm1                #  4     0xf   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                            #  5     0x14  1      OPC=retq                     
                                                                                                     
.size target, .-target
