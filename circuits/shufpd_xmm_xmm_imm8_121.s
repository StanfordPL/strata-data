  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm12, %xmm13, %xmm11   #  2     0x5   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vpor %ymm11, %ymm11, %ymm2           #  3     0xa   5      OPC=vpor_ymm_ymm_ymm         
  unpckhpd %xmm2, %xmm1                #  4     0xf   4      OPC=unpckhpd_xmm_xmm         
  retq                                 #  5     0x13  1      OPC=retq                     
                                                                                          
.size target, .-target
