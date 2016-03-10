  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpunpckhdq %xmm1, %xmm1, %xmm12  #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpbroadcastd %xmm12, %ymm4       #  2     0x4   5      OPC=vpbroadcastd_ymm_xmm    
  pmovzxwq %xmm4, %xmm4            #  3     0x9   5      OPC=pmovzxwq_xmm_xmm        
  movd %xmm4, %ebx                 #  4     0xe   4      OPC=movd_r32_xmm            
  retq                             #  5     0x12  1      OPC=retq                    
                                                                                     
.size target, .-target
