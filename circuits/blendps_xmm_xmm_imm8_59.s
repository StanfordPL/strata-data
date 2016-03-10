  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vpunpckhqdq %xmm2, %xmm1, %xmm5      #  2     0x5   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovss %xmm5, %xmm13, %xmm10         #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm       
  movddup %xmm10, %xmm13               #  4     0xd   5      OPC=movddup_xmm_xmm          
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x12  5      OPC=callq_label              
  retq                                 #  6     0x17  1      OPC=retq                     
                                                                                          
.size target, .-target
