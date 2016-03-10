  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  vfnmsub231pd %xmm8, %xmm9, %xmm3                #  2     0x5   5      OPC=vfnmsub231pd_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  3     0xa   5      OPC=callq_label               
  vfnmsub231pd %xmm8, %xmm4, %xmm1                #  4     0xf   5      OPC=vfnmsub231pd_xmm_xmm_xmm  
  vfmsub231pd %xmm3, %xmm2, %xmm1                 #  5     0x14  5      OPC=vfmsub231pd_xmm_xmm_xmm   
  retq                                            #  6     0x19  1      OPC=retq                      
                                                                                                      
.size target, .-target
