  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                       
.target:                                #        0    0      OPC=<label>                  
  vunpcklpd %ymm2, %ymm2, %ymm13        #  1     0    4      OPC=vunpcklpd_ymm_ymm_ymm    
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x4  5      OPC=callq_label              
  vpunpckhqdq %ymm13, %ymm2, %ymm1      #  3     0x9  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                  #  4     0xe  1      OPC=retq                     
                                                                                          
.size target, .-target
