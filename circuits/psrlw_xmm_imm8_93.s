  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  pmovzxdq %xmm1, %xmm5         #  1     0     5      OPC=pmovzxdq_xmm_xmm    
  vminpd %xmm1, %xmm5, %xmm11   #  2     0x5   4      OPC=vminpd_xmm_xmm_xmm  
  vpandn %xmm11, %xmm11, %xmm2  #  3     0x9   5      OPC=vpandn_xmm_xmm_xmm  
  vxorps %xmm2, %xmm2, %xmm7    #  4     0xe   4      OPC=vxorps_xmm_xmm_xmm  
  pmovzxwq %xmm7, %xmm1         #  5     0x12  5      OPC=pmovzxwq_xmm_xmm    
  retq                          #  6     0x17  1      OPC=retq                
                                                                              
.size target, .-target
