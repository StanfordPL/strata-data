  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  unpcklps %xmm10, %xmm11                         #  2     0x5   4      OPC=unpcklps_xmm_xmm         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  3     0x9   5      OPC=callq_label              
  punpckldq %xmm8, %xmm11                         #  4     0xe   5      OPC=punpckldq_xmm_xmm        
  vunpcklps %xmm7, %xmm1, %xmm13                  #  5     0x13  4      OPC=vunpcklps_xmm_xmm_xmm    
  vpunpcklqdq %xmm11, %xmm13, %xmm14              #  6     0x17  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  movups %xmm14, %xmm1                            #  7     0x1c  4      OPC=movups_xmm_xmm           
  retq                                            #  8     0x20  1      OPC=retq                     
                                                                                                     
.size target, .-target
