  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm10, %xmm10, %xmm1    #  2     0x5   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovups %xmm2, %xmm9                 #  3     0xa   4      OPC=vmovups_xmm_xmm          
  movhlps %xmm9, %xmm1                 #  4     0xe   4      OPC=movhlps_xmm_xmm          
  retq                                 #  5     0x12  1      OPC=retq                     
                                                                                          
.size target, .-target
