  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  callq .move_128_64_xmm1_xmm12_xmm13             #  2     0x5   5      OPC=callq_label              
  vpmovzxdq %xmm13, %xmm13                        #  3     0xa   5      OPC=vpmovzxdq_xmm_xmm        
  vpunpcklqdq %xmm10, %xmm13, %xmm3               #  4     0xf   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovhlps %xmm13, %xmm3, %xmm10                  #  5     0x14  5      OPC=vmovhlps_xmm_xmm_xmm     
  callq .move_128_64_xmm3_xmm8_xmm9               #  6     0x19  5      OPC=callq_label              
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1e  5      OPC=callq_label              
  retq                                            #  8     0x23  1      OPC=retq                     
                                                                                                     
.size target, .-target
