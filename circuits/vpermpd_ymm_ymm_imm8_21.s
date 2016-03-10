  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm10_xmm11   #  1     0     5      OPC=callq_label              
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label              
  vmaxpd %xmm10, %xmm12, %xmm5          #  3     0xa   5      OPC=vmaxpd_xmm_xmm_xmm       
  vpunpcklqdq %xmm5, %xmm11, %xmm13     #  4     0xf   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x13  5      OPC=callq_label              
  unpckhpd %xmm1, %xmm1                 #  6     0x18  4      OPC=unpckhpd_xmm_xmm         
  retq                                  #  7     0x1c  1      OPC=retq                     
                                                                                           
.size target, .-target
