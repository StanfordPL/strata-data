  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vpbroadcastb %xmm3, %xmm1             #  1     0     5      OPC=vpbroadcastb_xmm_xmm     
  vpunpckhqdq %ymm1, %ymm2, %ymm12      #  2     0x5   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  unpckhpd %xmm3, %xmm3                 #  3     0x9   4      OPC=unpckhpd_xmm_xmm         
  callq .move_256_128_ymm2_xmm12_xmm13  #  4     0xd   5      OPC=callq_label              
  vpunpcklqdq %ymm3, %ymm12, %ymm1      #  5     0x12  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                  #  6     0x16  1      OPC=retq                     
                                                                                           
.size target, .-target
