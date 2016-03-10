  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vpbroadcastd %xmm7, %xmm3                     #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm     
  vpunpckldq %xmm5, %xmm6, %xmm13               #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm   
  vpunpcklqdq %xmm3, %xmm13, %xmm1              #  4     0xe   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                          #  5     0x12  1      OPC=retq                     
                                                                                                   
.size target, .-target
