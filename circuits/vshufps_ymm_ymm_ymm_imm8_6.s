  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vpunpckldq %ymm2, %ymm2, %ymm0  #  1     0     4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhps %ymm0, %ymm2, %ymm10  #  2     0x4   4      OPC=vunpckhps_ymm_ymm_ymm   
  vmovddup %ymm3, %ymm3           #  3     0x8   4      OPC=vmovddup_ymm_ymm        
  vmovsldup %ymm3, %ymm0          #  4     0xc   4      OPC=vmovsldup_ymm_ymm       
  vunpcklpd %ymm0, %ymm10, %ymm1  #  5     0x10  4      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                            #  6     0x14  1      OPC=retq                    
                                                                                    
.size target, .-target
