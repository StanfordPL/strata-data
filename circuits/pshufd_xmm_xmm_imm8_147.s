  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  punpckhdq %xmm2, %xmm10                         #  2     0x5   5      OPC=punpckhdq_xmm_xmm  
  vorps %xmm10, %xmm8, %xmm15                     #  3     0xa   5      OPC=vorps_xmm_xmm_xmm  
  vorps %xmm10, %xmm11, %xmm8                     #  4     0xf   5      OPC=vorps_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x14  5      OPC=callq_label        
  unpcklps %xmm15, %xmm1                          #  6     0x19  4      OPC=unpcklps_xmm_xmm   
  retq                                            #  7     0x1d  1      OPC=retq               
                                                                                               
.size target, .-target
