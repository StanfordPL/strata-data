  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r8_r9                #  1     0     5      OPC=callq_label            
  callq .move_064_128_r8_r9_xmm3                #  2     0x5   5      OPC=callq_label            
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label            
  unpcklps %xmm6, %xmm7                         #  4     0xf   3      OPC=unpcklps_xmm_xmm       
  vunpcklps %xmm3, %xmm7, %xmm1                 #  5     0x12  4      OPC=vunpcklps_xmm_xmm_xmm  
  retq                                          #  6     0x16  1      OPC=retq                   
                                                                                                 
.size target, .-target
