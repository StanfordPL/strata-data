  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vunpckhps %ymm2, %ymm2, %ymm6     #  1     0     4      OPC=vunpckhps_ymm_ymm_ymm   
  vmovddup %ymm6, %ymm10            #  2     0x4   4      OPC=vmovddup_ymm_ymm        
  vpunpckldq %ymm2, %ymm6, %ymm2    #  3     0x8   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckhdq %ymm10, %ymm6, %ymm14  #  4     0xc   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpckhps %ymm2, %ymm14, %ymm1    #  5     0x11  4      OPC=vunpckhps_ymm_ymm_ymm   
  retq                              #  6     0x15  1      OPC=retq                    
                                                                                      
.size target, .-target
