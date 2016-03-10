  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  vunpckhpd %ymm2, %ymm2, %ymm11     #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm   
  vmovsldup %ymm2, %ymm14            #  2     0x4   4      OPC=vmovsldup_ymm_ymm       
  vpunpckldq %ymm14, %ymm11, %ymm9   #  3     0x8   5      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckldq %ymm11, %ymm14, %ymm11  #  4     0xd   5      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpcklpd %ymm9, %ymm11, %ymm1     #  5     0x12  5      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                               #  6     0x17  1      OPC=retq                    
                                                                                       
.size target, .-target
