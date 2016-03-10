  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                       
.target:                               #        0    0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0    5      OPC=callq_label              
  movddup %xmm12, %xmm3                #  2     0x5  5      OPC=movddup_xmm_xmm          
  vpunpckhqdq %ymm3, %ymm2, %ymm1      #  3     0xa  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                 #  4     0xe  1      OPC=retq                     
                                                                                         
.size target, .-target
