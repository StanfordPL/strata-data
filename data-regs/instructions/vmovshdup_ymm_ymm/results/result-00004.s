  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vpunpckldq %ymm2, %ymm2, %ymm1    #  1     0     4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhpd %ymm2, %ymm1, %ymm12    #  2     0x4   4      OPC=vunpckhpd_ymm_ymm_ymm   
  vpunpckhdq %ymm12, %ymm1, %ymm12  #  3     0x8   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpckhps %ymm12, %ymm12, %ymm1   #  4     0xd   5      OPC=vunpckhps_ymm_ymm_ymm   
  retq                              #  5     0x12  1      OPC=retq                    
                                                                                      
.size target, .-target
