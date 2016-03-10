  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vpandn %xmm1, %xmm1, %xmm14  #  1     0     4      OPC=vpandn_xmm_xmm_xmm  
  movdqa %xmm14, %xmm8         #  2     0x4   5      OPC=movdqa_xmm_xmm      
  pmovzxwq %xmm8, %xmm9        #  3     0x9   6      OPC=pmovzxwq_xmm_xmm    
  pmovsxdq %xmm9, %xmm1        #  4     0xf   6      OPC=pmovsxdq_xmm_xmm    
  retq                         #  5     0x15  1      OPC=retq                
                                                                             
.size target, .-target
