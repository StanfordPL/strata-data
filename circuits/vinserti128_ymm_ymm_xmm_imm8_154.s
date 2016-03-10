  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  movlhps %xmm9, %xmm8                            #  2     0x5   4      OPC=movlhps_xmm_xmm          
  vmovdqa %ymm2, %ymm1                            #  3     0x9   4      OPC=vmovdqa_ymm_ymm          
  vpunpcklqdq %xmm1, %xmm8, %xmm8                 #  4     0xd   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x11  5      OPC=callq_label              
  retq                                            #  6     0x16  1      OPC=retq                     
                                                                                                     
.size target, .-target
