  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm8_xmm9               #  1     0     5      OPC=callq_label         
  vmovdqa %xmm2, %xmm1                            #  2     0x5   4      OPC=vmovdqa_xmm_xmm     
  callq .move_256_128_ymm1_xmm10_xmm11            #  3     0x9   5      OPC=callq_label         
  vminps %ymm1, %ymm1, %ymm11                     #  4     0xe   4      OPC=vminps_ymm_ymm_ymm  
  vmovupd %xmm1, %xmm9                            #  5     0x12  4      OPC=vmovupd_xmm_xmm     
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x16  5      OPC=callq_label         
  retq                                            #  7     0x1b  1      OPC=retq                
                                                                                                
.size target, .-target
