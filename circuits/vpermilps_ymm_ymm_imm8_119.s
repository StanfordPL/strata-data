  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovsldup %xmm2, %xmm14           #  1     0     4      OPC=vmovsldup_xmm_xmm        
  vpunpckhqdq %ymm14, %ymm2, %ymm1  #  2     0x4   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpcklps %ymm2, %ymm1, %ymm3     #  3     0x9   4      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpckhqdq %ymm3, %ymm3, %ymm1   #  4     0xd   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
