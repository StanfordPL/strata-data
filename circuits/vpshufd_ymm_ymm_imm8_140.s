  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vmovsldup %ymm2, %ymm11             #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vunpckhps %ymm11, %ymm2, %ymm15     #  2     0x4   5      OPC=vunpckhps_ymm_ymm_ymm    
  vhaddps %ymm11, %ymm2, %ymm14       #  3     0x9   5      OPC=vhaddps_ymm_ymm_ymm      
  vpunpcklqdq %ymm11, %ymm14, %ymm13  #  4     0xe   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vunpckhps %ymm15, %ymm13, %ymm7     #  5     0x13  5      OPC=vunpckhps_ymm_ymm_ymm    
  vmovaps %ymm7, %ymm1                #  6     0x18  4      OPC=vmovaps_ymm_ymm          
  retq                                #  7     0x1c  1      OPC=retq                     
                                                                                         
.size target, .-target
