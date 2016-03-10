  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovupd %ymm2, %ymm8             #  1     0     4      OPC=vmovupd_ymm_ymm         
  vpunpckldq %ymm8, %ymm2, %ymm14  #  2     0x4   5      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhpd %ymm14, %ymm2, %ymm3   #  3     0x9   5      OPC=vunpckhpd_ymm_ymm_ymm   
  vmovshdup %ymm3, %ymm5           #  4     0xe   4      OPC=vmovshdup_ymm_ymm       
  vunpcklps %ymm2, %ymm5, %ymm1    #  5     0x12  4      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckldq %ymm5, %ymm14, %ymm3  #  6     0x16  4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpcklpd %ymm3, %ymm1, %ymm1    #  7     0x1a  4      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                             #  8     0x1e  1      OPC=retq                    
                                                                                     
.size target, .-target
