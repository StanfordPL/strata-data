  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  vunpcklps %xmm2, %xmm1, %xmm13     #  1     0     4      OPC=vunpcklps_xmm_xmm_xmm   
  vbroadcastss %xmm2, %ymm3          #  2     0x4   5      OPC=vbroadcastss_ymm_xmm    
  vpunpckhdq %xmm3, %xmm1, %xmm10    #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpunpckhdq %ymm10, %ymm13, %ymm15  #  4     0xd   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  movaps %xmm15, %xmm1               #  5     0x12  4      OPC=movaps_xmm_xmm          
  retq                               #  6     0x16  1      OPC=retq                    
                                                                                       
.size target, .-target
