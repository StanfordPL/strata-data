  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vmovddup %xmm12, %xmm6                #  2     0x5   5      OPC=vmovddup_xmm_xmm         
  movdqu %xmm6, %xmm10                  #  3     0xa   5      OPC=movdqu_xmm_xmm           
  vpunpcklqdq %xmm10, %xmm13, %xmm14    #  4     0xf   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x14  5      OPC=callq_label              
  movdqa %xmm14, %xmm1                  #  6     0x19  5      OPC=movdqa_xmm_xmm           
  retq                                  #  7     0x1e  1      OPC=retq                     
                                                                                           
.size target, .-target
