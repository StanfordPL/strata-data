  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vminss %xmm6, %xmm2, %xmm14                   #  2     0x5   4      OPC=vminss_xmm_xmm_xmm      
  vunpcklps %xmm2, %xmm5, %xmm12                #  3     0x9   4      OPC=vunpcklps_xmm_xmm_xmm   
  movlhps %xmm12, %xmm2                         #  4     0xd   4      OPC=movlhps_xmm_xmm         
  vpunpckhdq %xmm2, %xmm14, %xmm1               #  5     0x11  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  retq                                          #  6     0x15  1      OPC=retq                    
                                                                                                  
.size target, .-target
