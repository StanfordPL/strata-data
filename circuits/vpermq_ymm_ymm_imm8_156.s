  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vmovdqu %xmm13, %xmm11                #  2     0x5   5      OPC=vmovdqu_xmm_xmm          
  callq .move_128_64_xmm2_xmm8_xmm9     #  3     0xa   5      OPC=callq_label              
  vpunpckhqdq %xmm13, %xmm9, %xmm5      #  4     0xf   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  punpcklqdq %xmm11, %xmm9              #  5     0x14  5      OPC=punpcklqdq_xmm_xmm       
  callq .move_128_256_xmm8_xmm9_ymm1    #  6     0x19  5      OPC=callq_label              
  orps %xmm5, %xmm1                     #  7     0x1e  3      OPC=orps_xmm_xmm             
  retq                                  #  8     0x21  1      OPC=retq                     
                                                                                           
.size target, .-target
