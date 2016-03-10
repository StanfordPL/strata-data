  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vxorps %xmm7, %xmm7, %xmm14   #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  vsubpd %ymm14, %ymm14, %ymm9  #  2     0x4   5      OPC=vsubpd_ymm_ymm_ymm  
  vmaxps %ymm14, %ymm9, %ymm13  #  3     0x9   5      OPC=vmaxps_ymm_ymm_ymm  
  pmovzxwd %xmm13, %xmm1        #  4     0xe   6      OPC=pmovzxwd_xmm_xmm    
  retq                          #  5     0x14  1      OPC=retq                
                                                                              
.size target, .-target
