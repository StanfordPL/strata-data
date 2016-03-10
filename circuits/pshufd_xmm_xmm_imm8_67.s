  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label               
  movdqu %xmm2, %xmm12                            #  3     0xa   5      OPC=movdqu_xmm_xmm            
  vfnmadd132pd %xmm5, %xmm12, %xmm9               #  4     0xf   5      OPC=vfnmadd132pd_xmm_xmm_xmm  
  vunpcklps %xmm4, %xmm11, %xmm8                  #  5     0x14  4      OPC=vunpcklps_xmm_xmm_xmm     
  callq .move_64_128_xmm8_xmm9_xmm1               #  6     0x18  5      OPC=callq_label               
  retq                                            #  7     0x1d  1      OPC=retq                      
                                                                                                      
.size target, .-target
