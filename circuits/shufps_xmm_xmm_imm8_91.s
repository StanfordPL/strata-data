  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label            
  addsubpd %xmm6, %xmm1                           #  2     0x5   4      OPC=addsubpd_xmm_xmm       
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label            
  vunpcklps %xmm10, %xmm7, %xmm10                 #  4     0xe   5      OPC=vunpcklps_xmm_xmm_xmm  
  movshdup %xmm2, %xmm11                          #  5     0x13  5      OPC=movshdup_xmm_xmm       
  callq .move_64_128_xmm10_xmm11_xmm1             #  6     0x18  5      OPC=callq_label            
  retq                                            #  7     0x1d  1      OPC=retq                   
                                                                                                   
.size target, .-target
