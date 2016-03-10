  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vbroadcastss %xmm9, %xmm0          #  2     0x5   5      OPC=vbroadcastss_xmm_xmm     
  vpunpcklqdq %xmm0, %xmm2, %xmm7    #  3     0xa   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  movshdup %xmm7, %xmm1              #  4     0xe   4      OPC=movshdup_xmm_xmm         
  retq                               #  5     0x12  1      OPC=retq                     
                                                                                        
.size target, .-target
