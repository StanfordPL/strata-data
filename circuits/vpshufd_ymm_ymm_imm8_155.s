  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovdqu %ymm2, %ymm3            #  1     0     4      OPC=vmovdqu_ymm_ymm         
  vunpckhpd %ymm2, %ymm3, %ymm4   #  2     0x4   4      OPC=vunpckhpd_ymm_ymm_ymm   
  vpunpckldq %ymm3, %ymm4, %ymm4  #  3     0x8   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vmovsldup %ymm3, %ymm7          #  4     0xc   4      OPC=vmovsldup_ymm_ymm       
  vunpckhps %ymm7, %ymm4, %ymm1   #  5     0x10  4      OPC=vunpckhps_ymm_ymm_ymm   
  retq                            #  6     0x14  1      OPC=retq                    
                                                                                    
.size target, .-target
