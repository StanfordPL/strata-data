  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  callq .move_128_64_xmm3_xmm12_xmm13           #  2     0x5   5      OPC=callq_label              
  punpckldq %xmm3, %xmm13                       #  3     0xa   5      OPC=punpckldq_xmm_xmm        
  vunpcklps %xmm6, %xmm7, %xmm1                 #  4     0xf   4      OPC=vunpcklps_xmm_xmm_xmm    
  vpunpcklqdq %xmm13, %xmm1, %xmm1              #  5     0x13  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                          #  6     0x18  1      OPC=retq                     
                                                                                                   
.size target, .-target
