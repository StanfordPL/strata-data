  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovshdup %ymm2, %ymm8           #  1     0     4      OPC=vmovshdup_ymm_ymm        
  vpunpcklqdq %ymm2, %ymm8, %ymm4  #  2     0x4   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpunpckhdq %ymm4, %ymm8, %ymm1   #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpckhdq %ymm4, %ymm1, %ymm0   #  4     0xc   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  minss %xmm0, %xmm1               #  5     0x10  4      OPC=minss_xmm_xmm            
  retq                             #  6     0x14  1      OPC=retq                     
                                                                                      
.size target, .-target
