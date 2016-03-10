  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpckhpd %ymm3, %ymm2, %ymm8  #  1     0    4      OPC=vunpckhpd_ymm_ymm_ymm  
  vmovapd %ymm8, %ymm1           #  2     0x4  5      OPC=vmovapd_ymm_ymm        
  unpcklpd %xmm3, %xmm1          #  3     0x9  4      OPC=unpcklpd_xmm_xmm       
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
