  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpbroadcastq %xmm2, %ymm7         #  1     0     5      OPC=vpbroadcastq_ymm_xmm     
  vpbroadcastq %xmm7, %ymm12        #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm     
  movups %xmm2, %xmm12              #  3     0xa   4      OPC=movups_xmm_xmm           
  vpunpckhqdq %ymm12, %ymm2, %ymm1  #  4     0xe   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  5     0x13  1      OPC=retq                     
                                                                                       
.size target, .-target
