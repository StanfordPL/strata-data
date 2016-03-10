  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vpmovzxwd %xmm1, %ymm6       #  1     0    5      OPC=vpmovzxwd_ymm_xmm   
  vsubpd %ymm6, %ymm6, %ymm13  #  2     0x5  4      OPC=vsubpd_ymm_ymm_ymm  
  movapd %xmm13, %xmm1         #  3     0x9  5      OPC=movapd_xmm_xmm      
  retq                         #  4     0xe  1      OPC=retq                
                                                                            
.size target, .-target
