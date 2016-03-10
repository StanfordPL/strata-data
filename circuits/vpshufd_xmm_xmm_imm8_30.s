  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm2, %xmm9, %xmm5     #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vpunpckldq %xmm5, %xmm2, %xmm1     #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm  
  movsd %xmm9, %xmm1                 #  4     0xd   5      OPC=movsd_xmm_xmm           
  retq                               #  5     0x12  1      OPC=retq                    
                                                                                       
.size target, .-target
