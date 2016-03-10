  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vunpcklps %xmm9, %xmm10, %xmm1                  #  2     0x5   5      OPC=vunpcklps_xmm_xmm_xmm    
  vunpcklps %xmm2, %xmm10, %xmm13                 #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm    
  callq .move_256_128_ymm1_xmm8_xmm9              #  4     0xe   5      OPC=callq_label              
  vpunpcklqdq %xmm13, %xmm8, %xmm1                #  5     0x13  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                            #  6     0x18  1      OPC=retq                     
                                                                                                     
.size target, .-target
