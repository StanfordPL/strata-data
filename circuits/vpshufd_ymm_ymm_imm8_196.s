  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vunpcklps %ymm2, %ymm2, %ymm11    #  1     0     4      OPC=vunpcklps_ymm_ymm_ymm    
  vunpckhps %ymm2, %ymm11, %ymm4    #  2     0x4   4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpcklqdq %ymm11, %ymm4, %ymm9  #  3     0x8   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vunpckhps %ymm4, %ymm9, %ymm1     #  4     0xd   4      OPC=vunpckhps_ymm_ymm_ymm    
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
