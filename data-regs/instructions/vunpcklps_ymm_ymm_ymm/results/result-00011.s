  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP  Bytes  Opcode                      
.target:                           #        0    0      OPC=<label>                 
  vmovddup %ymm2, %ymm10           #  1     0    4      OPC=vmovddup_ymm_ymm        
  vmovddup %ymm3, %ymm7            #  2     0x4  4      OPC=vmovddup_ymm_ymm        
  vpunpckhdq %ymm7, %ymm10, %ymm1  #  3     0x8  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                             #  4     0xc  1      OPC=retq                    
                                                                                    
.size target, .-target
