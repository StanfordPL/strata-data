  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vorpd %ymm2, %ymm2, %ymm7       #  1     0     4      OPC=vorpd_ymm_ymm_ymm       
  vpunpckldq %ymm2, %ymm2, %ymm5  #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckhdq %ymm7, %ymm5, %ymm3  #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckhdq %ymm7, %ymm3, %ymm1  #  4     0xc   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                            #  5     0x10  1      OPC=retq                    
                                                                                    
.size target, .-target
