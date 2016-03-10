  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovdqu %ymm2, %ymm13           #  1     0     4      OPC=vmovdqu_ymm_ymm        
  vmovapd %ymm13, %ymm8           #  2     0x4   5      OPC=vmovapd_ymm_ymm        
  vunpcklps %ymm3, %ymm8, %ymm13  #  3     0x9   4      OPC=vunpcklps_ymm_ymm_ymm  
  vmovdqa %ymm13, %ymm1           #  4     0xd   5      OPC=vmovdqa_ymm_ymm        
  retq                            #  5     0x12  1      OPC=retq                   
                                                                                   
.size target, .-target
