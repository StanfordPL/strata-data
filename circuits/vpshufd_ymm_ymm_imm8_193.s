  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovddup %ymm2, %ymm10           #  1     0     4      OPC=vmovddup_ymm_ymm         
  vmovshdup %ymm2, %ymm1           #  2     0x4   4      OPC=vmovshdup_ymm_ymm        
  vunpckhps %ymm1, %ymm10, %ymm4   #  3     0x8   4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpckhdq %ymm10, %ymm4, %ymm8  #  4     0xc   5      OPC=vpunpckhdq_ymm_ymm_ymm   
  vmovupd %ymm8, %ymm2             #  5     0x11  5      OPC=vmovupd_ymm_ymm          
  vpunpcklqdq %ymm4, %ymm2, %ymm1  #  6     0x16  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  7     0x1a  1      OPC=retq                     
                                                                                      
.size target, .-target
