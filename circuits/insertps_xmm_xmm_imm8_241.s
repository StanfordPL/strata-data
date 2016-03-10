  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  callq .move_128_64_xmm2_xmm8_xmm9             #  2     0x5   5      OPC=callq_label         
  vpsubq %xmm5, %xmm5, %xmm4                    #  3     0xa   4      OPC=vpsubq_xmm_xmm_xmm  
  vmovshdup %xmm9, %xmm7                        #  4     0xe   5      OPC=vmovshdup_xmm_xmm   
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x13  5      OPC=callq_label         
  retq                                          #  6     0x18  1      OPC=retq                
                                                                                              
.size target, .-target
