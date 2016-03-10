  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r12_r13                #  1     0     5      OPC=callq_label              
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label              
  callq .move_064_128_r12_r13_xmm2                #  3     0xa   5      OPC=callq_label              
  movddup %xmm10, %xmm10                          #  4     0xf   5      OPC=movddup_xmm_xmm          
  vpunpckhqdq %xmm10, %xmm9, %xmm1                #  5     0x14  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                                            #  6     0x19  1      OPC=retq                     
                                                                                                     
.size target, .-target
