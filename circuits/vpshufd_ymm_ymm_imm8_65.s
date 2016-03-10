  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovddup %ymm2, %ymm10            #  1     0     4      OPC=vmovddup_ymm_ymm        
  vpunpckhdq %ymm10, %ymm10, %ymm7  #  2     0x4   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckhdq %ymm10, %ymm7, %ymm11  #  3     0x9   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckldq %ymm10, %ymm11, %ymm1  #  4     0xe   5      OPC=vpunpckldq_ymm_ymm_ymm  
  retq                              #  5     0x13  1      OPC=retq                    
                                                                                      
.size target, .-target
