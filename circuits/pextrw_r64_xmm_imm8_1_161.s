  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %xmm13  #  1     0     5      OPC=vpmovzxwd_xmm_xmm  
  movshdup %xmm13, %xmm13  #  2     0x5   5      OPC=movshdup_xmm_xmm   
  vmovdqa %ymm13, %ymm5    #  3     0xa   5      OPC=vmovdqa_ymm_ymm    
  vmovupd %xmm5, %xmm3     #  4     0xf   4      OPC=vmovupd_xmm_xmm    
  movd %xmm3, %ebx         #  5     0x13  4      OPC=movd_r32_xmm       
  retq                     #  6     0x17  1      OPC=retq               
                                                                        
.size target, .-target
