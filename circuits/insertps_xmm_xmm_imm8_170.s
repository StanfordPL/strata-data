  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label            
  movsldup %xmm4, %xmm14                          #  2     0x5   5      OPC=movsldup_xmm_xmm       
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label            
  vunpcklps %xmm10, %xmm14, %xmm0                 #  4     0xf   5      OPC=vunpcklps_xmm_xmm_xmm  
  pmovzxdq %xmm0, %xmm1                           #  5     0x14  5      OPC=pmovzxdq_xmm_xmm       
  retq                                            #  6     0x19  1      OPC=retq                   
                                                                                                   
.size target, .-target
