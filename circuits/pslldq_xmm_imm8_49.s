  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovzxbq %xmm1, %ymm14  #  1     0     5      OPC=vpmovzxbq_ymm_xmm  
  unpcklps %xmm14, %xmm1   #  2     0x5   4      OPC=unpcklps_xmm_xmm   
  punpckhdq %xmm14, %xmm1  #  3     0x9   5      OPC=punpckhdq_xmm_xmm  
  movhlps %xmm1, %xmm1     #  4     0xe   3      OPC=movhlps_xmm_xmm    
  retq                     #  5     0x11  1      OPC=retq               
                                                                        
.size target, .-target
