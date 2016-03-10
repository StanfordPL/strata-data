  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm11, %xmm2, %xmm5      #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  movddup %xmm5, %xmm1                 #  3     0xa   4      OPC=movddup_xmm_xmm         
  movhlps %xmm5, %xmm1                 #  4     0xe   3      OPC=movhlps_xmm_xmm         
  retq                                 #  5     0x11  1      OPC=retq                    
                                                                                         
.size target, .-target
