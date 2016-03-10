  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpunpckldq %ymm2, %ymm2, %ymm1   #  1     0     4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckhdq %ymm1, %ymm2, %ymm12  #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovups %ymm12, %ymm10           #  3     0x8   5      OPC=vmovups_ymm_ymm         
  vunpcklps %ymm10, %ymm2, %ymm1   #  4     0xd   5      OPC=vunpcklps_ymm_ymm_ymm   
  retq                             #  5     0x12  1      OPC=retq                    
                                                                                     
.size target, .-target
