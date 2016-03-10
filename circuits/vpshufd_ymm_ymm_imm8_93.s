  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovshdup %ymm2, %ymm14           #  1     0     4      OPC=vmovshdup_ymm_ymm       
  vminpd %ymm14, %ymm14, %ymm9      #  2     0x4   5      OPC=vminpd_ymm_ymm_ymm      
  vmovupd %ymm9, %ymm15             #  3     0x9   5      OPC=vmovupd_ymm_ymm         
  vpunpckldq %ymm2, %ymm9, %ymm10   #  4     0xe   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckhdq %ymm15, %ymm10, %ymm1  #  5     0x12  5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklpd %ymm14, %ymm1, %ymm1    #  6     0x17  5      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                              #  7     0x1c  1      OPC=retq                    
                                                                                      
.size target, .-target
