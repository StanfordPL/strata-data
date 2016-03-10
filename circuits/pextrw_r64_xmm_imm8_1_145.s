  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vpmovzxwq %xmm1, %xmm10           #  1     0     5      OPC=vpmovzxwq_xmm_xmm       
  vpunpckhdq %xmm10, %xmm10, %xmm1  #  2     0x5   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpmovzxwd %xmm1, %ymm4            #  3     0xa   5      OPC=vpmovzxwd_ymm_xmm       
  movd %xmm4, %ebx                  #  4     0xf   4      OPC=movd_r32_xmm            
  retq                              #  5     0x13  1      OPC=retq                    
                                                                                      
.size target, .-target
