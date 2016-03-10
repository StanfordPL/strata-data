  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vmovshdup %xmm2, %xmm7                          #  1     0     4      OPC=vmovshdup_xmm_xmm        
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  punpckldq %xmm11, %xmm2                         #  3     0x9   5      OPC=punpckldq_xmm_xmm        
  vpunpcklqdq %xmm7, %xmm2, %xmm1                 #  4     0xe   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                            #  5     0x12  1      OPC=retq                     
                                                                                                     
.size target, .-target
