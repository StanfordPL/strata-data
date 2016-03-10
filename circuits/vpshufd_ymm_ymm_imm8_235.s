  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vmovsldup %ymm2, %ymm15         #  1     0    4      OPC=vmovsldup_ymm_ymm      
  vunpckhps %ymm15, %ymm2, %ymm9  #  2     0x4  5      OPC=vunpckhps_ymm_ymm_ymm  
  vunpckhpd %ymm2, %ymm9, %ymm1   #  3     0x9  4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                            #  4     0xd  1      OPC=retq                   
                                                                                  
.size target, .-target
