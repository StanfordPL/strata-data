  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm2, %xmm10, %xmm14    #  2     0x5   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  unpckhps %xmm14, %xmm10              #  3     0x9   4      OPC=unpckhps_xmm_xmm         
  movq %xmm10, %xmm1                   #  4     0xd   5      OPC=movq_xmm_xmm             
  retq                                 #  5     0x12  1      OPC=retq                     
                                                                                          
.size target, .-target
