  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %ymm2, %ymm2, %ymm1    #  2     0x5   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  3     0x9   5      OPC=callq_label              
  vunpckhpd %ymm1, %ymm1, %ymm1      #  4     0xe   4      OPC=vunpckhpd_ymm_ymm_ymm    
  retq                               #  5     0x12  1      OPC=retq                     
                                                                                        
.size target, .-target
