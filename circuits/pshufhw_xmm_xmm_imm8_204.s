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
  vxorps %xmm10, %xmm7, %xmm10                    #  3     0xa   5      OPC=vxorps_xmm_xmm_xmm  
  pmovzxwq %xmm10, %xmm6                          #  4     0xf   6      OPC=pmovzxwq_xmm_xmm    
  vpandn %ymm10, %ymm10, %ymm7                    #  5     0x15  5      OPC=vpandn_ymm_ymm_ymm  
  xorps %xmm11, %xmm6                             #  6     0x1a  4      OPC=xorps_xmm_xmm       
  vpor %xmm7, %xmm6, %xmm7                        #  7     0x1e  4      OPC=vpor_xmm_xmm_xmm    
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  8     0x22  5      OPC=callq_label         
  retq                                            #  9     0x27  1      OPC=retq                
                                                                                                
.size target, .-target
