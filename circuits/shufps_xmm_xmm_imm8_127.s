  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpckhdq %xmm2, %xmm1, %xmm6                  #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vpmovzxwd %xmm1, %xmm14                         #  3     0x9   5      OPC=vpmovzxwd_xmm_xmm        
  vpunpckhqdq %xmm14, %xmm6, %xmm8                #  4     0xe   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  5     0x13  5      OPC=callq_label              
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2  #  6     0x18  5      OPC=callq_label              
  unpcklps %xmm2, %xmm1                           #  7     0x1d  3      OPC=unpcklps_xmm_xmm         
  retq                                            #  8     0x20  1      OPC=retq                     
                                                                                                     
.size target, .-target
