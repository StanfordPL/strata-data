  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovsldup %ymm2, %ymm7           #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vmovshdup %ymm2, %ymm9           #  2     0x4   4      OPC=vmovshdup_ymm_ymm        
  vunpckhps %ymm7, %ymm9, %ymm8    #  3     0x8   4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpckldq %ymm8, %ymm2, %ymm0   #  4     0xc   5      OPC=vpunpckldq_ymm_ymm_ymm   
  vpunpcklqdq %ymm0, %ymm8, %ymm5  #  5     0x11  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpunpckhqdq %ymm8, %ymm5, %ymm1  #  6     0x15  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  7     0x1a  1      OPC=retq                     
                                                                                      
.size target, .-target
