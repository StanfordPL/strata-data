  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovshdup %ymm2, %ymm7           #  1     0     4      OPC=vmovshdup_ymm_ymm       
  vmovdqa %ymm2, %ymm9             #  2     0x4   4      OPC=vmovdqa_ymm_ymm         
  vunpcklps %ymm9, %ymm7, %ymm9    #  3     0x8   5      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckhdq %ymm2, %ymm7, %ymm12  #  4     0xd   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklpd %ymm9, %ymm12, %ymm1   #  5     0x11  5      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                             #  6     0x16  1      OPC=retq                    
                                                                                     
.size target, .-target
