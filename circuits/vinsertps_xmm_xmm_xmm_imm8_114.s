  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm10, %xmm3, %xmm1                #  2     0x5   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vunpcklps %xmm3, %xmm11, %xmm15                 #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm    
  vpunpckhdq %ymm15, %ymm1, %ymm3                 #  4     0xe   5      OPC=vpunpckhdq_ymm_ymm_ymm   
  pmovzxdq %xmm8, %xmm1                           #  5     0x13  6      OPC=pmovzxdq_xmm_xmm         
  phaddd %xmm3, %xmm1                             #  6     0x19  5      OPC=phaddd_xmm_xmm           
  retq                                            #  7     0x1e  1      OPC=retq                     
                                                                                                     
.size target, .-target
