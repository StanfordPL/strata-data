  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vmovshdup %ymm2, %ymm15  #  1     0    4      OPC=vmovshdup_ymm_ymm  
  vmovddup %ymm15, %ymm1   #  2     0x4  5      OPC=vmovddup_ymm_ymm   
  retq                     #  3     0x9  1      OPC=retq               
                                                                       
.size target, .-target
