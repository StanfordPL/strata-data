  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm11, %xmm10, %xmm8     #  2     0x5   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovhlps %xmm11, %xmm10, %xmm9        #  3     0xa   5      OPC=vmovhlps_xmm_xmm_xmm     
  callq .move_128_256_xmm8_xmm9_ymm1    #  4     0xf   5      OPC=callq_label              
  retq                                  #  5     0x14  1      OPC=retq                     
                                                                                           
.size target, .-target
