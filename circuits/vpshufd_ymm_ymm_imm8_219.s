  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpcklqdq %ymm2, %ymm2, %ymm0  #  1     0     4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vmovdqu %ymm2, %ymm9             #  2     0x4   4      OPC=vmovdqu_ymm_ymm          
  vpunpckhdq %ymm0, %ymm2, %ymm7   #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpckhdq %ymm9, %ymm7, %ymm0   #  4     0xc   5      OPC=vpunpckhdq_ymm_ymm_ymm   
  vmovdqu %ymm0, %ymm1             #  5     0x11  4      OPC=vmovdqu_ymm_ymm          
  retq                             #  6     0x15  1      OPC=retq                     
                                                                                      
.size target, .-target
