  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovsldup %ymm2, %ymm1           #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vpunpckhqdq %ymm1, %ymm1, %ymm7  #  2     0x4   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpckldq %ymm1, %ymm2, %ymm9   #  3     0x8   4      OPC=vpunpckldq_ymm_ymm_ymm   
  vpunpckldq %ymm9, %ymm7, %ymm15  #  4     0xc   5      OPC=vpunpckldq_ymm_ymm_ymm   
  vunpckhpd %ymm15, %ymm9, %ymm1   #  5     0x11  5      OPC=vunpckhpd_ymm_ymm_ymm    
  retq                             #  6     0x16  1      OPC=retq                     
                                                                                      
.size target, .-target
