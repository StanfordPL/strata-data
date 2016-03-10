  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vunpckhps %ymm3, %ymm2, %ymm9    #  1     0     4      OPC=vunpckhps_ymm_ymm_ymm   
  vpunpckldq %ymm3, %ymm2, %ymm12  #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vmovapd %ymm9, %ymm10            #  3     0x8   5      OPC=vmovapd_ymm_ymm         
  vunpckhps %ymm12, %ymm10, %ymm1  #  4     0xd   5      OPC=vunpckhps_ymm_ymm_ymm   
  retq                             #  5     0x12  1      OPC=retq                    
                                                                                     
.size target, .-target
