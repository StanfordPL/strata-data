  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vmovss %xmm2, %xmm3, %xmm4                    #  2     0x5   4      OPC=vmovss_xmm_xmm_xmm  
  vmaxps %xmm4, %xmm4, %xmm12                   #  3     0x9   4      OPC=vmaxps_xmm_xmm_xmm  
  unpcklpd %xmm5, %xmm2                         #  4     0xd   4      OPC=unpcklpd_xmm_xmm    
  vminss %xmm2, %xmm12, %xmm1                   #  5     0x11  4      OPC=vminss_xmm_xmm_xmm  
  retq                                          #  6     0x15  1      OPC=retq                
                                                                                              
.size target, .-target
