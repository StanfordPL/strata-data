  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vpunpckhqdq %xmm2, %xmm3, %xmm6       #  2     0x5   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movddup %xmm3, %xmm13                 #  3     0x9   5      OPC=movddup_xmm_xmm          
  unpcklpd %xmm6, %xmm13                #  4     0xe   5      OPC=unpcklpd_xmm_xmm         
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x13  5      OPC=callq_label              
  retq                                  #  6     0x18  1      OPC=retq                     
                                                                                           
.size target, .-target
