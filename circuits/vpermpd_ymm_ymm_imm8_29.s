  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9     #  1     0     5      OPC=callq_label              
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label              
  punpcklqdq %xmm8, %xmm9               #  3     0xa   5      OPC=punpcklqdq_xmm_xmm       
  vpunpckhqdq %xmm11, %xmm2, %xmm3      #  4     0xf   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovupd %xmm3, %xmm8                  #  5     0x14  4      OPC=vmovupd_xmm_xmm          
  callq .move_128_256_xmm8_xmm9_ymm1    #  6     0x18  5      OPC=callq_label              
  retq                                  #  7     0x1d  1      OPC=retq                     
                                                                                           
.size target, .-target
