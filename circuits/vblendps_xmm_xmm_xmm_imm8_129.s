  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  callq .move_128_064_xmm2_r10_r11              #  2     0x5   5      OPC=callq_label         
  callq .move_064_128_r10_r11_xmm2              #  3     0xa   5      OPC=callq_label         
  vmovss %xmm4, %xmm2, %xmm1                    #  4     0xf   4      OPC=vmovss_xmm_xmm_xmm  
  retq                                          #  5     0x13  1      OPC=retq                
                                                                                              
.size target, .-target
