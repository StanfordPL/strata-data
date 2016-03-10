  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vaddsubps %xmm1, %xmm9, %xmm11     #  2     0x5   4      OPC=vaddsubps_xmm_xmm_xmm    
  vpunpckhqdq %xmm11, %xmm1, %xmm4   #  3     0x9   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vorps %ymm1, %ymm1, %ymm7          #  4     0xe   4      OPC=vorps_ymm_ymm_ymm        
  vpunpcklqdq %xmm4, %xmm7, %xmm1    #  5     0x12  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                               #  6     0x16  1      OPC=retq                     
                                                                                        
.size target, .-target
