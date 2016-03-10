  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vmovsldup %ymm2, %ymm15            #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vpunpcklqdq %ymm15, %ymm15, %ymm0  #  2     0x4   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vunpckhps %ymm2, %ymm0, %ymm2      #  3     0x9   4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpckhqdq %ymm2, %ymm15, %ymm1   #  4     0xd   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                               #  5     0x11  1      OPC=retq                     
                                                                                        
.size target, .-target
