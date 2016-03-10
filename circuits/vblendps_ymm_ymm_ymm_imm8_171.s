  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovshdup %ymm3, %ymm12          #  1     0     4      OPC=vmovshdup_ymm_ymm        
  vpunpckldq %ymm12, %ymm2, %ymm0  #  2     0x4   5      OPC=vpunpckldq_ymm_ymm_ymm   
  vunpckhps %ymm12, %ymm2, %ymm6   #  3     0x9   5      OPC=vunpckhps_ymm_ymm_ymm    
  movss %xmm3, %xmm0               #  4     0xe   4      OPC=movss_xmm_xmm            
  vpunpcklqdq %ymm6, %ymm0, %ymm1  #  5     0x12  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  6     0x16  1      OPC=retq                     
                                                                                      
.size target, .-target
