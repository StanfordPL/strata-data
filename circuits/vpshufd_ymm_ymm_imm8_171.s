  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  vmovsldup %ymm2, %ymm6          #  1     0    4      OPC=vmovsldup_ymm_ymm       
  vpunpckhdq %ymm6, %ymm2, %ymm4  #  2     0x4  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckhdq %ymm6, %ymm4, %ymm1  #  3     0x8  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                            #  4     0xc  1      OPC=retq                    
                                                                                   
.size target, .-target
