  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  vcvttps2dq %xmm1, %xmm14           #  1     0     4      OPC=vcvttps2dq_xmm_xmm      
  vandnps %ymm14, %ymm14, %ymm7      #  2     0x4   5      OPC=vandnps_ymm_ymm_ymm     
  vunpcklps %xmm14, %xmm7, %xmm13    #  3     0x9   5      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckhdq %ymm13, %ymm13, %ymm14  #  4     0xe   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  cvtps2pd %xmm14, %xmm1             #  5     0x13  4      OPC=cvtps2pd_xmm_xmm        
  retq                               #  6     0x17  1      OPC=retq                    
                                                                                       
.size target, .-target
