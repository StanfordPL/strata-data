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
  vcvtpd2ps %xmm7, %xmm5                          #  3     0xa   4      OPC=vcvtpd2ps_xmm_xmm   
  vmulss %xmm11, %xmm7, %xmm14                    #  4     0xe   5      OPC=vmulss_xmm_xmm_xmm  
  haddps %xmm5, %xmm14                            #  5     0x13  5      OPC=haddps_xmm_xmm      
  pmovzxdq %xmm14, %xmm1                          #  6     0x18  6      OPC=pmovzxdq_xmm_xmm    
  retq                                            #  7     0x1e  1      OPC=retq                
                                                                                                
.size target, .-target
