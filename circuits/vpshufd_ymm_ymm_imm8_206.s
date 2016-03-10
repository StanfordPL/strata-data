  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovsldup %ymm2, %ymm8           #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vpunpckhqdq %ymm2, %ymm2, %ymm1  #  2     0x4   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpcklps %ymm1, %ymm8, %ymm14   #  3     0x8   4      OPC=vunpcklps_ymm_ymm_ymm    
  vunpckhpd %ymm14, %ymm2, %ymm1   #  4     0xc   5      OPC=vunpckhpd_ymm_ymm_ymm    
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
