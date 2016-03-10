  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vunpcklps %ymm2, %ymm2, %ymm12   #  1     0     4      OPC=vunpcklps_ymm_ymm_ymm    
  vmovups %ymm12, %ymm9            #  2     0x4   5      OPC=vmovups_ymm_ymm          
  vpunpckhqdq %ymm9, %ymm2, %ymm4  #  3     0x9   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovshdup %ymm4, %ymm1           #  4     0xe   4      OPC=vmovshdup_ymm_ymm        
  retq                             #  5     0x12  1      OPC=retq                     
                                                                                      
.size target, .-target
