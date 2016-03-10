  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm8            #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vpunpckhdq %ymm8, %ymm2, %ymm4    #  2     0x4   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovshdup %ymm2, %ymm10           #  3     0x9   4      OPC=vmovshdup_ymm_ymm       
  vpunpckldq %ymm10, %ymm4, %ymm10  #  4     0xd   5      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhpd %ymm4, %ymm10, %ymm1    #  5     0x12  4      OPC=vunpckhpd_ymm_ymm_ymm   
  retq                              #  6     0x16  1      OPC=retq                    
                                                                                      
.size target, .-target
