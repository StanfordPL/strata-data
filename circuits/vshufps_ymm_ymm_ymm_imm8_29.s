  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovshdup %ymm2, %ymm5           #  1     0     4      OPC=vmovshdup_ymm_ymm       
  vpunpckldq %ymm3, %ymm5, %ymm11  #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vmovapd %ymm11, %ymm1            #  3     0x8   5      OPC=vmovapd_ymm_ymm         
  vunpckhps %ymm5, %ymm1, %ymm4    #  4     0xd   4      OPC=vunpckhps_ymm_ymm_ymm   
  vpunpckldq %ymm11, %ymm4, %ymm1  #  5     0x11  5      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpcklps %ymm3, %ymm5, %ymm13   #  6     0x16  4      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckhdq %ymm1, %ymm13, %ymm1  #  7     0x1a  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                             #  8     0x1e  1      OPC=retq                    
                                                                                     
.size target, .-target
