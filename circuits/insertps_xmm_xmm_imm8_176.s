  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  movdqu %xmm1, %xmm10     #  1     0     5      OPC=movdqu_xmm_xmm     
  vmovsldup %xmm2, %xmm7   #  2     0x5   4      OPC=vmovsldup_xmm_xmm  
  punpckhdq %xmm7, %xmm10  #  3     0x9   5      OPC=punpckhdq_xmm_xmm  
  unpcklpd %xmm10, %xmm1   #  4     0xe   5      OPC=unpcklpd_xmm_xmm   
  retq                     #  5     0x13  1      OPC=retq               
                                                                        
.size target, .-target
