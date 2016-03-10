  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm4           #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vmovshdup %ymm2, %ymm14          #  2     0x4   4      OPC=vmovshdup_ymm_ymm       
  vunpckhpd %ymm4, %ymm2, %ymm2    #  3     0x8   4      OPC=vunpckhpd_ymm_ymm_ymm   
  vpunpckldq %ymm14, %ymm2, %ymm7  #  4     0xc   5      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhpd %ymm2, %ymm7, %ymm1    #  5     0x11  4      OPC=vunpckhpd_ymm_ymm_ymm   
  retq                             #  6     0x15  1      OPC=retq                    
                                                                                     
.size target, .-target
