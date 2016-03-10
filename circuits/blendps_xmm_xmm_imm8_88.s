  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpckhqdq %xmm1, %xmm2, %xmm5                 #  2     0x5   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movss %xmm10, %xmm5                             #  3     0x9   5      OPC=movss_xmm_xmm            
  punpcklqdq %xmm5, %xmm1                         #  4     0xe   4      OPC=punpcklqdq_xmm_xmm       
  retq                                            #  5     0x12  1      OPC=retq                     
                                                                                                     
.size target, .-target
