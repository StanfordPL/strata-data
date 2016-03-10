  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpbroadcastd %xmm3, %xmm8                       #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm     
  vpunpckldq %xmm8, %xmm3, %xmm4                  #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm   
  vpbroadcastd %xmm11, %ymm0                      #  4     0xf   5      OPC=vpbroadcastd_ymm_xmm     
  vpunpckhqdq %xmm4, %xmm0, %xmm1                 #  5     0x14  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                                            #  6     0x18  1      OPC=retq                     
                                                                                                     
.size target, .-target
