  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpckhqdq %xmm9, %xmm10, %xmm11               #  2     0x5   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  pmovzxbq %xmm11, %xmm1                          #  3     0xa   6      OPC=pmovzxbq_xmm_xmm         
  retq                                            #  4     0x10  1      OPC=retq                     
                                                                                                     
.size target, .-target
