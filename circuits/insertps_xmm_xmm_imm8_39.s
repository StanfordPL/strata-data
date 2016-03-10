  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  unpckhps %xmm1, %xmm11                          #  2     0x5   4      OPC=unpckhps_xmm_xmm         
  vmaxps %xmm11, %xmm11, %xmm12                   #  3     0x9   5      OPC=vmaxps_xmm_xmm_xmm       
  callq .move_128_64_xmm1_xmm8_xmm9               #  4     0xe   5      OPC=callq_label              
  vpunpckhqdq %xmm12, %xmm9, %xmm11               #  5     0x13  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movdqa %xmm11, %xmm1                            #  6     0x18  5      OPC=movdqa_xmm_xmm           
  retq                                            #  7     0x1d  1      OPC=retq                     
                                                                                                     
.size target, .-target
