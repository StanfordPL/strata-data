  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vpxor %ymm1, %ymm1, %ymm14      #  1     0     4      OPC=vpxor_ymm_ymm_ymm       
  pmovzxbq %xmm14, %xmm14         #  2     0x4   6      OPC=pmovzxbq_xmm_xmm        
  vunpcklps %xmm14, %xmm1, %xmm1  #  3     0xa   5      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckhdq %xmm1, %xmm1, %xmm4  #  4     0xf   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  pmovsxdq %xmm4, %xmm1           #  5     0x13  5      OPC=pmovsxdq_xmm_xmm        
  vmovd %xmm1, %ebx               #  6     0x18  4      OPC=vmovd_r32_xmm           
  retq                            #  7     0x1c  1      OPC=retq                    
                                                                                    
.size target, .-target
