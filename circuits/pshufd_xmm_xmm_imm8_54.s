  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vorps %xmm2, %xmm2, %xmm10      #  1     0     4      OPC=vorps_xmm_xmm_xmm      
  vmaxss %xmm10, %xmm10, %xmm7    #  2     0x4   5      OPC=vmaxss_xmm_xmm_xmm     
  movups %xmm7, %xmm1             #  3     0x9   3      OPC=movups_xmm_xmm         
  vpbroadcastd %xmm2, %ymm4       #  4     0xc   5      OPC=vpbroadcastd_ymm_xmm   
  vunpcklps %ymm4, %ymm10, %ymm6  #  5     0x11  4      OPC=vunpcklps_ymm_ymm_ymm  
  punpckhdq %xmm6, %xmm1          #  6     0x15  4      OPC=punpckhdq_xmm_xmm      
  retq                            #  7     0x19  1      OPC=retq                   
                                                                                   
.size target, .-target
