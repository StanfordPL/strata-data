  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  movshdup %xmm2, %xmm1            #  1     0     4      OPC=movshdup_xmm_xmm        
  pmovsxdq %xmm2, %xmm10           #  2     0x4   6      OPC=pmovsxdq_xmm_xmm        
  vpunpckldq %xmm10, %xmm1, %xmm9  #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm  
  unpcklps %xmm9, %xmm1            #  4     0xf   4      OPC=unpcklps_xmm_xmm        
  retq                             #  5     0x13  1      OPC=retq                    
                                                                                     
.size target, .-target
