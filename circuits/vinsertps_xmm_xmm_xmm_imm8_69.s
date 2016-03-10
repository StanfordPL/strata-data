  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmovss %xmm2, %xmm2, %xmm1                    #  1     0     4      OPC=vmovss_xmm_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label         
  andnpd %xmm1, %xmm4                           #  3     0x9   4      OPC=andnpd_xmm_xmm      
  vaddsd %xmm6, %xmm4, %xmm1                    #  4     0xd   4      OPC=vaddsd_xmm_xmm_xmm  
  punpckhdq %xmm2, %xmm6                        #  5     0x11  4      OPC=punpckhdq_xmm_xmm   
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x15  5      OPC=callq_label         
  retq                                          #  7     0x1a  1      OPC=retq                
                                                                                              
.size target, .-target
