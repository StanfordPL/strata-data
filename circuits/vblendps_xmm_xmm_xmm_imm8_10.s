  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vminss %xmm2, %xmm3, %xmm1                      #  1     0     4      OPC=vminss_xmm_xmm_xmm       
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  3     0x9   5      OPC=callq_label              
  vfmadd213sd %xmm5, %xmm8, %xmm9                 #  4     0xe   5      OPC=vfmadd213sd_xmm_xmm_xmm  
  vunpcklps %xmm3, %xmm7, %xmm11                  #  5     0x13  4      OPC=vunpcklps_xmm_xmm_xmm    
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x17  5      OPC=callq_label              
  retq                                            #  7     0x1c  1      OPC=retq                     
                                                                                                     
.size target, .-target
