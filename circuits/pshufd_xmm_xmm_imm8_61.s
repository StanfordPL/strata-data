  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  movshdup %xmm2, %xmm1                           #  1     0     4      OPC=movshdup_xmm_xmm         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  3     0x9   5      OPC=callq_label              
  callq .move_128_64_xmm1_xmm8_xmm9               #  4     0xe   5      OPC=callq_label              
  unpcklps %xmm4, %xmm9                           #  5     0x13  4      OPC=unpcklps_xmm_xmm         
  vfmadd132pd %xmm5, %xmm2, %xmm11                #  6     0x17  5      OPC=vfmadd132pd_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1c  5      OPC=callq_label              
  retq                                            #  8     0x21  1      OPC=retq                     
                                                                                                     
.size target, .-target
