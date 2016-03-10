  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vunpckhpd %ymm2, %ymm2, %ymm11   #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm   
  vmovddup %ymm2, %ymm10           #  2     0x4   4      OPC=vmovddup_ymm_ymm        
  vpunpckldq %ymm2, %ymm11, %ymm6  #  3     0x8   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckldq %ymm6, %ymm10, %ymm1  #  4     0xc   4      OPC=vpunpckldq_ymm_ymm_ymm  
  retq                             #  5     0x10  1      OPC=retq                    
                                                                                     
.size target, .-target
