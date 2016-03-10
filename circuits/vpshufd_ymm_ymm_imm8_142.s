  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vunpckhpd %ymm2, %ymm2, %ymm11   #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpckldq %ymm11, %ymm2, %ymm9  #  2     0x4   5      OPC=vpunpckldq_ymm_ymm_ymm   
  vmovdqa %ymm11, %ymm1            #  3     0x9   5      OPC=vmovdqa_ymm_ymm          
  vpunpcklqdq %ymm9, %ymm1, %ymm1  #  4     0xe   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  5     0x13  1      OPC=retq                     
                                                                                      
.size target, .-target
