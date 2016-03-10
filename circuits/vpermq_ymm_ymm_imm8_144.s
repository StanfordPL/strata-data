  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm1       #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpbroadcastq %xmm1, %ymm10            #  2     0x4   5      OPC=vpbroadcastq_ymm_xmm     
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0x9   5      OPC=callq_label              
  vunpcklpd %ymm2, %ymm10, %ymm1        #  4     0xe   4      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                                  #  5     0x12  1      OPC=retq                     
                                                                                           
.size target, .-target
