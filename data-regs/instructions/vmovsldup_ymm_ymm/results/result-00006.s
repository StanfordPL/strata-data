  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm13, %xmm13, %xmm8     #  2     0x5   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovsldup %xmm13, %xmm9               #  3     0xa   5      OPC=vmovsldup_xmm_xmm        
  callq .move_128_256_xmm8_xmm9_ymm1    #  4     0xf   5      OPC=callq_label              
  vmovsldup %xmm2, %xmm12               #  5     0x14  4      OPC=vmovsldup_xmm_xmm        
  movsldup %xmm12, %xmm1                #  6     0x18  5      OPC=movsldup_xmm_xmm         
  retq                                  #  7     0x1d  1      OPC=retq                     
                                                                                           
.size target, .-target
