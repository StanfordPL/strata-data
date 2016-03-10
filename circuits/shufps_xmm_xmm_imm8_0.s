  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm2, %xmm12, %xmm10    #  2     0x5   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  movsldup %xmm10, %xmm3               #  3     0x9   5      OPC=movsldup_xmm_xmm         
  movshdup %xmm3, %xmm1                #  4     0xe   4      OPC=movshdup_xmm_xmm         
  retq                                 #  5     0x12  1      OPC=retq                     
                                                                                          
.size target, .-target
