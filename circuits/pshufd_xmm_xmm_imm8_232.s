  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label     
  movupd %xmm6, %xmm5                           #  2     0x5   4      OPC=movupd_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3  #  3     0x9   5      OPC=callq_label     
  movdqa %xmm3, %xmm1                           #  4     0xe   4      OPC=movdqa_xmm_xmm  
  retq                                          #  5     0x12  1      OPC=retq            
                                                                                          
.size target, .-target
