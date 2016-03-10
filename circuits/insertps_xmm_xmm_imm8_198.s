  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vfmsub213ss %xmm1, %xmm2, %xmm2                 #  1     0     5      OPC=vfmsub213ss_xmm_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label              
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label              
  vpunpckhdq %xmm9, %xmm4, %xmm10                 #  4     0xf   5      OPC=vpunpckhdq_xmm_xmm_xmm   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  5     0x14  5      OPC=callq_label              
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x19  5      OPC=callq_label              
  movsd %xmm7, %xmm1                              #  7     0x1e  4      OPC=movsd_xmm_xmm            
  retq                                            #  8     0x22  1      OPC=retq                     
                                                                                                     
.size target, .-target
