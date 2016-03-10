  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d    #  1     0     5      OPC=callq_label         
  vmaxpd %xmm3, %xmm3, %xmm1                      #  2     0x5   4      OPC=vmaxpd_xmm_xmm_xmm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label         
  callq .move_128_64_xmm2_xmm8_xmm9               #  4     0xe   5      OPC=callq_label         
  movd %r11d, %xmm10                              #  5     0x13  5      OPC=movd_xmm_r32        
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x18  5      OPC=callq_label         
  retq                                            #  7     0x1d  1      OPC=retq                
                                                                                                
.size target, .-target
