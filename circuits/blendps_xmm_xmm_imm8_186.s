  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm1, %xmm1, %xmm6                 #  2     0x5   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vsubsd %xmm1, %xmm1, %xmm5                      #  3     0x9   4      OPC=vsubsd_xmm_xmm_xmm       
  vpunpckhqdq %xmm11, %xmm5, %xmm10               #  4     0xd   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpmovzxdq %xmm6, %xmm8                          #  5     0x12  5      OPC=vpmovzxdq_xmm_xmm        
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x17  5      OPC=callq_label              
  retq                                            #  7     0x1c  1      OPC=retq                     
                                                                                                     
.size target, .-target
