  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  vmovdqa %xmm3, %xmm9                            #  2     0x5   4      OPC=vmovdqa_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1              #  3     0x9   5      OPC=callq_label      
  movupd %xmm2, %xmm1                             #  4     0xe   4      OPC=movupd_xmm_xmm   
  retq                                            #  5     0x12  1      OPC=retq             
                                                                                             
.size target, .-target
