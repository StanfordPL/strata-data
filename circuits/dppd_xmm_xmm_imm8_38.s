  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label              
  vfmsub213pd %xmm7, %xmm1, %xmm2                 #  3     0xa   5      OPC=vfmsub213pd_xmm_xmm_xmm  
  vfmadd231pd %xmm8, %xmm6, %xmm2                 #  4     0xf   5      OPC=vfmadd231pd_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  5     0x14  5      OPC=callq_label              
  movhlps %xmm10, %xmm2                           #  6     0x19  4      OPC=movhlps_xmm_xmm          
  movups %xmm2, %xmm1                             #  7     0x1d  3      OPC=movups_xmm_xmm           
  retq                                            #  8     0x20  1      OPC=retq                     
                                                                                                     
.size target, .-target
