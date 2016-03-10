  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  movss %xmm2, %xmm3                    #  1     0     4      OPC=movss_xmm_xmm            
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x4   5      OPC=callq_label              
  vunpckhps %xmm3, %xmm3, %xmm7         #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm    
  vunpckhps %ymm7, %ymm2, %ymm8         #  4     0xd   4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpcklqdq %ymm8, %ymm3, %ymm12      #  5     0x11  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x16  5      OPC=callq_label              
  retq                                  #  7     0x1b  1      OPC=retq                     
                                                                                           
.size target, .-target
