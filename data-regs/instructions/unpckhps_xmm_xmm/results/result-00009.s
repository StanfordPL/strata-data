  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label              
  vmovhlps %xmm2, %xmm5, %xmm5                    #  3     0xa   4      OPC=vmovhlps_xmm_xmm_xmm     
  vpbroadcastq %xmm7, %xmm6                       #  4     0xe   5      OPC=vpbroadcastq_xmm_xmm     
  vpunpcklqdq %xmm2, %xmm11, %xmm7                #  5     0x13  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vpunpckhqdq %xmm10, %xmm1, %xmm4                #  6     0x17  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  7     0x1c  5      OPC=callq_label              
  retq                                            #  8     0x21  1      OPC=retq                     
                                                                                                     
.size target, .-target
