  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vpbroadcastd %xmm5, %xmm0                     #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm     
  vpunpckhdq %xmm2, %xmm0, %xmm5                #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vpunpckhqdq %xmm5, %xmm0, %xmm1               #  4     0xe   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                                          #  5     0x12  1      OPC=retq                     
                                                                                                   
.size target, .-target
