  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpckhqdq %xmm11, %xmm11, %xmm8    #  2     0x5   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  pmovsxdq %xmm8, %xmm1                #  3     0xa   6      OPC=pmovsxdq_xmm_xmm         
  retq                                 #  4     0x10  1      OPC=retq                     
                                                                                          
.size target, .-target
