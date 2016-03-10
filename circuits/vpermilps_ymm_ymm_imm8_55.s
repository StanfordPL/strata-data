  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vunpcklpd %ymm2, %ymm2, %ymm3   #  1     0     4      OPC=vunpcklpd_ymm_ymm_ymm  
  vmovshdup %ymm2, %ymm9          #  2     0x4   4      OPC=vmovshdup_ymm_ymm      
  vunpckhps %ymm3, %ymm9, %ymm14  #  3     0x8   4      OPC=vunpckhps_ymm_ymm_ymm  
  vmovddup %ymm14, %ymm1          #  4     0xc   5      OPC=vmovddup_ymm_ymm       
  vunpckhpd %ymm1, %ymm14, %ymm1  #  5     0x11  4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                            #  6     0x15  1      OPC=retq                   
                                                                                   
.size target, .-target
