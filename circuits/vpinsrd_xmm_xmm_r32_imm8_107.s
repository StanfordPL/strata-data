  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r10_r11              #  1     0     5      OPC=callq_label         
  callq .move_064_128_r10_r11_xmm2              #  2     0x5   5      OPC=callq_label         
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label         
  vmovd %ebx, %xmm7                             #  4     0xf   4      OPC=vmovd_xmm_r32       
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3  #  5     0x13  5      OPC=callq_label         
  vmaxps %xmm3, %xmm3, %xmm1                    #  6     0x18  4      OPC=vmaxps_xmm_xmm_xmm  
  retq                                          #  7     0x1c  1      OPC=retq                
                                                                                              
.size target, .-target
