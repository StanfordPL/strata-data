  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r8_r9                  #  1     0     5      OPC=callq_label             
  vzeroall                                        #  2     0x5   3      OPC=vzeroall                
  callq .move_064_128_r8_r9_xmm3                  #  3     0x8   5      OPC=callq_label             
  callq .move_128_64_xmm3_xmm10_xmm11             #  4     0xd   5      OPC=callq_label             
  vpunpckldq %xmm3, %xmm11, %xmm8                 #  5     0x12  4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3  #  6     0x16  5      OPC=callq_label             
  callq .move_128_64_xmm3_xmm8_xmm9               #  7     0x1b  5      OPC=callq_label             
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x20  5      OPC=callq_label             
  retq                                            #  9     0x25  1      OPC=retq                    
                                                                                                    
.size target, .-target
