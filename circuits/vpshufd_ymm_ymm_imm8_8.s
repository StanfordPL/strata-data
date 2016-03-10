  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovsldup %ymm2, %ymm12          #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vunpcklpd %ymm12, %ymm12, %ymm6  #  2     0x4   5      OPC=vunpcklpd_ymm_ymm_ymm    
  vpunpckhdq %ymm12, %ymm6, %ymm5  #  3     0x9   5      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpcklqdq %ymm6, %ymm5, %ymm1  #  4     0xe   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  5     0x12  1      OPC=retq                     
                                                                                      
.size target, .-target
