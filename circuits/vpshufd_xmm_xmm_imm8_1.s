  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vunpcklps %xmm2, %xmm2, %xmm10     #  1     0     4      OPC=vunpcklps_xmm_xmm_xmm     
  vbroadcastss %xmm10, %ymm1         #  2     0x4   5      OPC=vbroadcastss_ymm_xmm      
  vhsubps %ymm1, %ymm1, %ymm3        #  3     0x9   4      OPC=vhsubps_ymm_ymm_ymm       
  vunpcklps %xmm10, %xmm2, %xmm11    #  4     0xd   5      OPC=vunpcklps_xmm_xmm_xmm     
  vfnmsub231ss %xmm3, %xmm10, %xmm1  #  5     0x12  5      OPC=vfnmsub231ss_xmm_xmm_xmm  
  vpunpckhdq %xmm1, %xmm11, %xmm1    #  6     0x17  4      OPC=vpunpckhdq_xmm_xmm_xmm    
  retq                               #  7     0x1b  1      OPC=retq                      
                                                                                         
.size target, .-target
