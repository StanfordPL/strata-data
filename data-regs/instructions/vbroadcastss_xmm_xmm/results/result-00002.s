  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  vmovupd %xmm2, %xmm1                            #  1     0     4      OPC=vmovupd_xmm_xmm  
  callq .move_128_64_xmm1_xmm8_xmm9               #  2     0x4   5      OPC=callq_label      
  vmovupd %xmm2, %xmm9                            #  3     0x9   4      OPC=vmovupd_xmm_xmm  
  callq .move_256_128_ymm1_xmm10_xmm11            #  4     0xd   5      OPC=callq_label      
  vmovupd %xmm1, %xmm11                           #  5     0x12  4      OPC=vmovupd_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x16  5      OPC=callq_label      
  retq                                            #  7     0x1b  1      OPC=retq             
                                                                                             
.size target, .-target
