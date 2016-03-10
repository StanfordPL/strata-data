  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovdqa %ymm2, %ymm1            #  1     0     4      OPC=vmovdqa_ymm_ymm         
  vpunpckldq %ymm1, %ymm2, %ymm8  #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpcklps %ymm8, %ymm1, %ymm0   #  3     0x8   5      OPC=vunpcklps_ymm_ymm_ymm   
  vunpckhps %ymm1, %ymm0, %ymm1   #  4     0xd   4      OPC=vunpckhps_ymm_ymm_ymm   
  retq                            #  5     0x11  1      OPC=retq                    
                                                                                    
.size target, .-target
