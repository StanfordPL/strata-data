  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vmovdqu %ymm2, %ymm3           #  1     0    4      OPC=vmovdqu_ymm_ymm        
  vmovapd %ymm2, %ymm9           #  2     0x4  4      OPC=vmovapd_ymm_ymm        
  vunpcklpd %ymm9, %ymm3, %ymm1  #  3     0x8  5      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
