  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vunpckhpd %ymm2, %ymm2, %ymm15  #  1     0    4      OPC=vunpckhpd_ymm_ymm_ymm  
  vmovshdup %ymm2, %ymm2          #  2     0x4  4      OPC=vmovshdup_ymm_ymm      
  vunpckhps %ymm2, %ymm15, %ymm1  #  3     0x8  4      OPC=vunpckhps_ymm_ymm_ymm  
  retq                            #  4     0xc  1      OPC=retq                   
                                                                                  
.size target, .-target