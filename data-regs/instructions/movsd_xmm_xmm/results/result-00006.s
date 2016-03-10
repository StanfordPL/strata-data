  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  callq .move_128_64_xmm1_xmm8_xmm9             #  2     0x5   5      OPC=callq_label           
  vmovlhps %xmm6, %xmm2, %xmm8                  #  3     0xa   4      OPC=vmovlhps_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1             #  4     0xe   5      OPC=callq_label           
  retq                                          #  5     0x13  1      OPC=retq                  
                                                                                                
.size target, .-target
