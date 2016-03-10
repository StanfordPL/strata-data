  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  vpbroadcastd %xmm2, %xmm4                       #  1     0     5      OPC=vpbroadcastd_xmm_xmm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  unpckhps %xmm4, %xmm9                           #  3     0xa   4      OPC=unpckhps_xmm_xmm      
  callq .move_64_128_xmm8_xmm9_xmm1               #  4     0xe   5      OPC=callq_label           
  retq                                            #  5     0x13  1      OPC=retq                  
                                                                                                  
.size target, .-target
