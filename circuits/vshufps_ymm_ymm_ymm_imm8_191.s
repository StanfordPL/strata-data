  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovshdup %ymm2, %ymm9           #  1     0     4      OPC=vmovshdup_ymm_ymm        
  vmovsldup %ymm3, %ymm12          #  2     0x4   4      OPC=vmovsldup_ymm_ymm        
  vunpckhps %ymm12, %ymm3, %ymm2   #  3     0x8   5      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpckhqdq %ymm2, %ymm9, %ymm1  #  4     0xd   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
