  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vmovshdup %ymm2, %ymm7          #  1     0    4      OPC=vmovshdup_ymm_ymm      
  vunpcklpd %ymm2, %ymm2, %ymm12  #  2     0x4  4      OPC=vunpcklpd_ymm_ymm_ymm  
  vunpckhps %ymm12, %ymm7, %ymm1  #  3     0x8  5      OPC=vunpckhps_ymm_ymm_ymm  
  retq                            #  4     0xd  1      OPC=retq                   
                                                                                  
.size target, .-target
