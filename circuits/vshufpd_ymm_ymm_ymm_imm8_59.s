  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP  Bytes  Opcode                       
.target:                              #        0    0      OPC=<label>                  
  vunpcklpd %ymm2, %ymm3, %ymm8       #  1     0    4      OPC=vunpcklpd_ymm_ymm_ymm    
  callq .move_256_128_ymm2_xmm8_xmm9  #  2     0x4  5      OPC=callq_label              
  vpunpckhqdq %ymm3, %ymm8, %ymm1     #  3     0x9  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                #  4     0xd  1      OPC=retq                     
                                                                                        
.size target, .-target
