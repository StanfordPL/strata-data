  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  punpckldq %xmm11, %xmm9                         #  2     0x5   5      OPC=punpckldq_xmm_xmm        
  vpunpcklqdq %xmm2, %xmm9, %xmm5                 #  3     0xa   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovups %xmm5, %xmm2                            #  4     0xe   4      OPC=vmovups_xmm_xmm          
  movaps %xmm2, %xmm1                             #  5     0x12  3      OPC=movaps_xmm_xmm           
  retq                                            #  6     0x15  1      OPC=retq                     
                                                                                                     
.size target, .-target
