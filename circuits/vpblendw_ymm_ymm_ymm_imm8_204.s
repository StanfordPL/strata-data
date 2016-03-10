  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovshdup %ymm3, %ymm1          #  1     0     4      OPC=vmovshdup_ymm_ymm       
  vpunpckhdq %ymm1, %ymm2, %ymm5  #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklps %ymm1, %ymm2, %ymm1   #  3     0x8   4      OPC=vunpcklps_ymm_ymm_ymm   
  vunpcklpd %ymm5, %ymm1, %ymm1   #  4     0xc   4      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                            #  5     0x10  1      OPC=retq                    
                                                                                    
.size target, .-target
