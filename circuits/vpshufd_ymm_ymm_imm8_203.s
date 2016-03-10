  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vpbroadcastd %xmm2, %xmm1           #  1     0     5      OPC=vpbroadcastd_xmm_xmm     
  vmovddup %ymm2, %ymm8               #  2     0x5   4      OPC=vmovddup_ymm_ymm         
  vmovshdup %ymm2, %ymm9              #  3     0x9   4      OPC=vmovshdup_ymm_ymm        
  vunpckhps %ymm2, %ymm9, %ymm14      #  4     0xd   4      OPC=vunpckhps_ymm_ymm_ymm    
  callq .move_256_128_ymm1_xmm8_xmm9  #  5     0x11  5      OPC=callq_label              
  vunpckhps %ymm14, %ymm8, %ymm4      #  6     0x16  5      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpcklqdq %ymm4, %ymm14, %ymm1    #  7     0x1b  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                #  8     0x1f  1      OPC=retq                     
                                                                                         
.size target, .-target
