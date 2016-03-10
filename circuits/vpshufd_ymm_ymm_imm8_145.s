  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovupd %ymm2, %ymm3              #  1     0     4      OPC=vmovupd_ymm_ymm         
  vmovshdup %ymm3, %ymm7            #  2     0x4   4      OPC=vmovshdup_ymm_ymm       
  vpunpckldq %ymm2, %ymm7, %ymm10   #  3     0x8   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckhdq %ymm3, %ymm10, %ymm15  #  4     0xc   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklpd %ymm15, %ymm10, %ymm1   #  5     0x10  5      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                              #  6     0x15  1      OPC=retq                    
                                                                                      
.size target, .-target
