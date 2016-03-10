  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpmovzxbd %xmm1, %xmm15          #  1     0     5      OPC=vpmovzxbd_xmm_xmm       
  vpmovzxwq %xmm1, %ymm6           #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm       
  vpsubd %xmm15, %xmm6, %xmm11     #  3     0xa   5      OPC=vpsubd_xmm_xmm_xmm      
  vpunpckhdq %ymm11, %ymm6, %ymm6  #  4     0xf   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  movd %xmm6, %ebx                 #  5     0x14  4      OPC=movd_r32_xmm            
  retq                             #  6     0x18  1      OPC=retq                    
                                                                                     
.size target, .-target
