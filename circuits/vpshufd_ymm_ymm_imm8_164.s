  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vunpckhps %ymm2, %ymm2, %ymm5    #  1     0    4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpcklqdq %ymm5, %ymm2, %ymm1  #  2     0x4  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  3     0x8  1      OPC=retq                     
                                                                                     
.size target, .-target
