  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmovdqa %xmm2, %xmm1                            #  2     0x5   4      OPC=vmovdqa_xmm_xmm     
  vmaxps %ymm1, %ymm1, %ymm9                      #  3     0x9   4      OPC=vmaxps_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  4     0xd   5      OPC=callq_label         
  callq .move_128_64_xmm1_xmm10_xmm11             #  5     0x12  5      OPC=callq_label         
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x17  5      OPC=callq_label         
  retq                                            #  7     0x1c  1      OPC=retq                
                                                                                                
.size target, .-target
