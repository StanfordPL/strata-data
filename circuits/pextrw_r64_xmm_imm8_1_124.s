  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpunpckhdq %xmm1, %xmm1, %xmm15  #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movsldup %xmm15, %xmm0           #  2     0x4   5      OPC=movsldup_xmm_xmm        
  vpmovzxwq %xmm0, %ymm11          #  3     0x9   5      OPC=vpmovzxwq_ymm_xmm       
  movd %xmm11, %ebx                #  4     0xe   5      OPC=movd_r32_xmm            
  retq                             #  5     0x13  1      OPC=retq                    
                                                                                     
.size target, .-target
