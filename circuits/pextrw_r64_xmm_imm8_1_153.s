  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovdqu %xmm1, %xmm0              #  1     0     4      OPC=vmovdqu_xmm_xmm         
  vpmovzxwq %xmm1, %ymm15           #  2     0x4   5      OPC=vpmovzxwq_ymm_xmm       
  vmulpd %ymm15, %ymm0, %ymm7       #  3     0x9   5      OPC=vmulpd_ymm_ymm_ymm      
  vpunpckhdq %ymm7, %ymm15, %ymm11  #  4     0xe   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  movd %xmm11, %ebx                 #  5     0x12  5      OPC=movd_r32_xmm            
  retq                              #  6     0x17  1      OPC=retq                    
                                                                                      
.size target, .-target
