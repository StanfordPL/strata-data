  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovshdup %ymm2, %ymm15         #  1     0     4      OPC=vmovshdup_ymm_ymm      
  vunpcklps %ymm15, %ymm3, %ymm6  #  2     0x4   5      OPC=vunpcklps_ymm_ymm_ymm  
  vmovddup %ymm6, %ymm0           #  3     0x9   4      OPC=vmovddup_ymm_ymm       
  vunpckhpd %ymm2, %ymm0, %ymm1   #  4     0xd   4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                            #  5     0x11  1      OPC=retq                   
                                                                                   
.size target, .-target
