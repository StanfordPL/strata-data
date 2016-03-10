  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vmovddup %xmm9, %xmm0              #  2     0x5   5      OPC=vmovddup_xmm_xmm         
  vorps %ymm0, %ymm0, %ymm4          #  3     0xa   4      OPC=vorps_ymm_ymm_ymm        
  vpunpckhqdq %xmm3, %xmm4, %xmm1    #  4     0xe   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                               #  5     0x12  1      OPC=retq                     
                                                                                        
.size target, .-target
