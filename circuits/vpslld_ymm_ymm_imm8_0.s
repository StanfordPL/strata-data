  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  vmovdqa %ymm2, %ymm14  #  1     0    4      OPC=vmovdqa_ymm_ymm  
  vmovdqa %ymm14, %ymm1  #  2     0x4  5      OPC=vmovdqa_ymm_ymm  
  retq                   #  3     0x9  1      OPC=retq             
                                                                   
.size target, .-target
