  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovsldup %ymm3, %ymm8          #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vpunpckldq %ymm2, %ymm3, %ymm5  #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckhdq %ymm2, %ymm8, %ymm4  #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklps %ymm3, %ymm5, %ymm1   #  4     0xc   4      OPC=vunpcklps_ymm_ymm_ymm   
  vunpckhpd %ymm4, %ymm1, %ymm1   #  5     0x10  4      OPC=vunpckhpd_ymm_ymm_ymm   
  retq                            #  6     0x14  1      OPC=retq                    
                                                                                    
.size target, .-target
