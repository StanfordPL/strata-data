  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovshdup %ymm2, %ymm14          #  1     0     4      OPC=vmovshdup_ymm_ymm       
  vmovddup %ymm14, %ymm1           #  2     0x4   5      OPC=vmovddup_ymm_ymm        
  vunpckhps %ymm2, %ymm1, %ymm7    #  3     0x9   4      OPC=vunpckhps_ymm_ymm_ymm   
  vpunpckldq %ymm14, %ymm7, %ymm1  #  4     0xd   5      OPC=vpunpckldq_ymm_ymm_ymm  
  retq                             #  5     0x12  1      OPC=retq                    
                                                                                     
.size target, .-target
