  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vxorps %xmm11, %xmm10, %xmm13                   #  2     0x5   5      OPC=vxorps_xmm_xmm_xmm       
  vphaddd %ymm13, %ymm13, %ymm2                   #  3     0xa   5      OPC=vphaddd_ymm_ymm_ymm      
  vpand %xmm9, %xmm9, %xmm1                       #  4     0xf   5      OPC=vpand_xmm_xmm_xmm        
  vunpcklpd %xmm8, %xmm8, %xmm9                   #  5     0x14  5      OPC=vunpcklpd_xmm_xmm_xmm    
  vphaddd %xmm11, %xmm1, %xmm8                    #  6     0x19  5      OPC=vphaddd_xmm_xmm_xmm      
  vhaddpd %xmm13, %xmm2, %xmm7                    #  7     0x1e  5      OPC=vhaddpd_xmm_xmm_xmm      
  vfmsub231ps %xmm7, %xmm7, %xmm1                 #  8     0x23  5      OPC=vfmsub231ps_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  9     0x28  5      OPC=callq_label              
  retq                                            #  10    0x2d  1      OPC=retq                     
                                                                                                     
.size target, .-target
