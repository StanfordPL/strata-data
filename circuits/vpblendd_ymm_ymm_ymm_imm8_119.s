  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovsldup %ymm3, %ymm6            #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vmovupd %ymm3, %ymm1              #  2     0x4   4      OPC=vmovupd_ymm_ymm          
  vunpckhps %ymm2, %ymm6, %ymm2     #  3     0x8   4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpckhqdq %ymm2, %ymm2, %ymm13  #  4     0xc   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpcklqdq %ymm13, %ymm1, %ymm1  #  5     0x10  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                              #  6     0x15  1      OPC=retq                     
                                                                                       
.size target, .-target
