  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP   Bytes  Opcode                    
.target:                     #        0     0      OPC=<label>               
  movsldup %xmm1, %xmm9      #  1     0     5      OPC=movsldup_xmm_xmm      
  vpbroadcastq %xmm9, %ymm2  #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm  
  punpckhdq %xmm1, %xmm2     #  3     0xa   4      OPC=punpckhdq_xmm_xmm     
  pmovzxdq %xmm2, %xmm1      #  4     0xe   5      OPC=pmovzxdq_xmm_xmm      
  maxps %xmm1, %xmm1         #  5     0x13  3      OPC=maxps_xmm_xmm         
  retq                       #  6     0x16  1      OPC=retq                  
                                                                             
.size target, .-target
