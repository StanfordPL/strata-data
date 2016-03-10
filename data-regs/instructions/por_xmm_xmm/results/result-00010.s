  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                       
.target:                               #        0    0      OPC=<label>                  
  vorpd %xmm1, %xmm2, %xmm12           #  1     0    4      OPC=vorpd_xmm_xmm_xmm        
  vpunpckhqdq %xmm12, %xmm12, %xmm13   #  2     0x4  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  3     0x9  5      OPC=callq_label              
  retq                                 #  4     0xe  1      OPC=retq                     
                                                                                         
.size target, .-target
