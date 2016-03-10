  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP  Bytes  Opcode                      
.target:                           #        0    0      OPC=<label>                 
  vpunpckldq %ymm3, %ymm2, %ymm10  #  1     0    4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckhdq %ymm3, %ymm2, %ymm5   #  2     0x4  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vphsubd %ymm5, %ymm10, %ymm1     #  3     0x8  5      OPC=vphsubd_ymm_ymm_ymm     
  retq                             #  4     0xd  1      OPC=retq                    
                                                                                    
.size target, .-target
