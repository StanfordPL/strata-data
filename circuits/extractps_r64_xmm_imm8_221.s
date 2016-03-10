  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  xorl %ebx, %ebx                    #  1     0     2      OPC=xorl_r32_r32            
  vpmovzxdq %xmm1, %ymm10            #  2     0x2   5      OPC=vpmovzxdq_ymm_xmm       
  vpunpckhdq %xmm10, %xmm10, %xmm13  #  3     0x7   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movd %xmm13, %r9d                  #  4     0xc   5      OPC=movd_r32_xmm            
  cmovnol %r9d, %ebx                 #  5     0x11  4      OPC=cmovnol_r32_r32         
  retq                               #  6     0x15  1      OPC=retq                    
                                                                                       
.size target, .-target
