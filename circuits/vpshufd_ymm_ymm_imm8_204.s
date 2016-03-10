  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovshdup %ymm2, %ymm10         #  1     0     4      OPC=vmovshdup_ymm_ymm      
  vunpckhpd %ymm2, %ymm10, %ymm6  #  2     0x4   4      OPC=vunpckhpd_ymm_ymm_ymm  
  vunpcklps %ymm6, %ymm2, %ymm12  #  3     0x8   4      OPC=vunpcklps_ymm_ymm_ymm  
  vmovddup %ymm12, %ymm1          #  4     0xc   5      OPC=vmovddup_ymm_ymm       
  retq                            #  5     0x11  1      OPC=retq                   
                                                                                   
.size target, .-target
