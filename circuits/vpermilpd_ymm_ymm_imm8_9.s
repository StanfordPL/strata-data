  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vpunpcklqdq %xmm2, %xmm2, %xmm4     #  1     0     4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm8_xmm9  #  2     0x4   5      OPC=callq_label              
  vunpckhpd %xmm4, %xmm2, %xmm8       #  3     0x9   4      OPC=vunpckhpd_xmm_xmm_xmm    
  callq .move_128_256_xmm8_xmm9_ymm1  #  4     0xd   5      OPC=callq_label              
  retq                                #  5     0x12  1      OPC=retq                     
                                                                                         
.size target, .-target
