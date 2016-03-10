  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vminss %xmm4, %xmm2, %xmm9                    #  2     0x5   4      OPC=vminss_xmm_xmm_xmm  
  vcvtpd2ps %xmm9, %xmm14                       #  3     0x9   5      OPC=vcvtpd2ps_xmm_xmm   
  movdqu %xmm14, %xmm1                          #  4     0xe   5      OPC=movdqu_xmm_xmm      
  retq                                          #  5     0x13  1      OPC=retq                
                                                                                              
.size target, .-target
