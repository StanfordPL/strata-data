  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vorpd %ymm3, %ymm2, %ymm0  #  1     0    4      OPC=vorpd_ymm_ymm_ymm  
  vmovdqa %ymm0, %ymm1       #  2     0x4  4      OPC=vmovdqa_ymm_ymm    
  retq                       #  3     0x8  1      OPC=retq               
                                                                         
.size target, .-target
