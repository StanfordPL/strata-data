  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vunpckhpd %ymm2, %ymm3, %ymm6   #  1     0    4      OPC=vunpckhpd_ymm_ymm_ymm  
  vunpcklps %ymm6, %ymm3, %ymm11  #  2     0x4  4      OPC=vunpcklps_ymm_ymm_ymm  
  vunpckhpd %ymm11, %ymm2, %ymm1  #  3     0x8  5      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                            #  4     0xd  1      OPC=retq                   
                                                                                  
.size target, .-target
