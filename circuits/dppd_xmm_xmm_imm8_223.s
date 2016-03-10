  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode              
.target:                               #        0     0      OPC=<label>         
  mulpd %xmm2, %xmm1                   #  1     0     4      OPC=mulpd_xmm_xmm   
  callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x4   5      OPC=callq_label     
  movdqu %xmm10, %xmm1                 #  3     0x9   5      OPC=movdqu_xmm_xmm  
  haddpd %xmm10, %xmm1                 #  4     0xe   5      OPC=haddpd_xmm_xmm  
  retq                                 #  5     0x13  1      OPC=retq            
                                                                                 
.size target, .-target
