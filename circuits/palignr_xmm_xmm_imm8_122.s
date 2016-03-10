  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmaxss %xmm2, %xmm11, %xmm3                     #  2     0x5   4      OPC=vmaxss_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label         
  callq .move_128_256_xmm10_xmm11_ymm3            #  4     0xe   5      OPC=callq_label         
  movapd %xmm3, %xmm1                             #  5     0x13  4      OPC=movapd_xmm_xmm      
  retq                                            #  6     0x17  1      OPC=retq                
                                                                                                
.size target, .-target
