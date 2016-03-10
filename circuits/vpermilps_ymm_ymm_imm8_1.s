  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm10           #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vmovshdup %ymm2, %ymm6            #  2     0x4   4      OPC=vmovshdup_ymm_ymm       
  vpunpckldq %ymm10, %ymm6, %ymm11  #  3     0x8   5      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpcklps %ymm10, %ymm11, %ymm1   #  4     0xd   5      OPC=vunpcklps_ymm_ymm_ymm   
  retq                              #  5     0x12  1      OPC=retq                    
                                                                                      
.size target, .-target
