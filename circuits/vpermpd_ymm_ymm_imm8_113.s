  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vpbroadcastq %xmm9, %ymm4          #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm     
  unpcklpd %xmm2, %xmm4              #  3     0xa   4      OPC=unpcklpd_xmm_xmm         
  vandpd %ymm2, %ymm2, %ymm13        #  4     0xe   4      OPC=vandpd_ymm_ymm_ymm       
  vpunpckhqdq %ymm4, %ymm13, %ymm1   #  5     0x12  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                               #  6     0x16  1      OPC=retq                     
                                                                                        
.size target, .-target
