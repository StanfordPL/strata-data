  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  unpcklps %xmm8, %xmm10                          #  2     0x5   4      OPC=unpcklps_xmm_xmm         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  3     0x9   5      OPC=callq_label              
  vpunpcklqdq %xmm2, %xmm4, %xmm4                 #  4     0xe   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  punpckhdq %xmm2, %xmm1                          #  5     0x12  4      OPC=punpckhdq_xmm_xmm        
  unpckhps %xmm4, %xmm1                           #  6     0x16  3      OPC=unpckhps_xmm_xmm         
  movsd %xmm10, %xmm1                             #  7     0x19  5      OPC=movsd_xmm_xmm            
  retq                                            #  8     0x1e  1      OPC=retq                     
                                                                                                     
.size target, .-target
