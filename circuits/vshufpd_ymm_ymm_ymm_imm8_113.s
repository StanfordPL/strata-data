  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  punpckhqdq %xmm9, %xmm2            #  2     0x5   5      OPC=punpckhqdq_xmm_xmm       
  vpunpcklqdq %ymm3, %ymm2, %ymm11   #  3     0xa   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vorps %ymm11, %ymm11, %ymm1        #  4     0xe   5      OPC=vorps_ymm_ymm_ymm        
  retq                               #  5     0x13  1      OPC=retq                     
                                                                                        
.size target, .-target
