  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_64_xmm1_xmm10_xmm11           #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm10, %xmm1, %xmm9              #  2     0x5   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label              
  vpunpckldq %xmm6, %xmm5, %xmm8                #  4     0xf   4      OPC=vpunpckldq_xmm_xmm_xmm   
  unpckhps %xmm9, %xmm1                         #  5     0x13  4      OPC=unpckhps_xmm_xmm         
  unpcklpd %xmm8, %xmm1                         #  6     0x17  5      OPC=unpcklpd_xmm_xmm         
  retq                                          #  7     0x1c  1      OPC=retq                     
                                                                                                   
.size target, .-target
