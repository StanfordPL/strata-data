  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vunpcklps %ymm2, %ymm2, %ymm3   #  1     0     4      OPC=vunpcklps_ymm_ymm_ymm   
  vunpcklps %ymm3, %ymm2, %ymm4   #  2     0x4   4      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckhdq %ymm4, %ymm2, %ymm1  #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpckhpd %ymm4, %ymm1, %ymm4   #  4     0xc   4      OPC=vunpckhpd_ymm_ymm_ymm   
  vmaxpd %ymm4, %ymm4, %ymm1      #  5     0x10  4      OPC=vmaxpd_ymm_ymm_ymm      
  retq                            #  6     0x14  1      OPC=retq                    
                                                                                    
.size target, .-target
