  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vpunpcklqdq %xmm2, %xmm2, %xmm3     #  1     0     4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_256_128_ymm3_xmm8_xmm9  #  2     0x4   5      OPC=callq_label              
  movups %xmm9, %xmm1                 #  3     0x9   4      OPC=movups_xmm_xmm           
  cvtss2sd %xmm9, %xmm1               #  4     0xd   5      OPC=cvtss2sd_xmm_xmm         
  retq                                #  5     0x12  1      OPC=retq                     
                                                                                         
.size target, .-target
