  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vpunpckldq %ymm2, %ymm2, %ymm14   #  1     0     4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckhdq %ymm14, %ymm2, %ymm14  #  2     0x4   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklpd %ymm14, %ymm2, %ymm7    #  3     0x9   5      OPC=vunpcklpd_ymm_ymm_ymm   
  vmaxps %ymm7, %ymm7, %ymm1        #  4     0xe   4      OPC=vmaxps_ymm_ymm_ymm      
  retq                              #  5     0x12  1      OPC=retq                    
                                                                                      
.size target, .-target
