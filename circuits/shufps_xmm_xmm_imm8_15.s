  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  movdqa %xmm2, %xmm2                             #  1     0     4      OPC=movdqa_xmm_xmm           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  vpunpcklqdq %xmm2, %xmm11, %xmm11               #  3     0x9   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  movsldup %xmm11, %xmm1                          #  4     0xd   5      OPC=movsldup_xmm_xmm         
  retq                                            #  5     0x12  1      OPC=retq                     
                                                                                                     
.size target, .-target
