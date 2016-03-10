  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmovshdup %xmm1, %xmm9         #  1     0     4      OPC=vmovshdup_xmm_xmm      
  vunpcklpd %xmm9, %xmm9, %xmm4  #  2     0x4   5      OPC=vunpcklpd_xmm_xmm_xmm  
  vpmovzxwd %xmm4, %ymm15        #  3     0x9   5      OPC=vpmovzxwd_ymm_xmm      
  movhlps %xmm15, %xmm1          #  4     0xe   4      OPC=movhlps_xmm_xmm        
  movd %xmm1, %ebx               #  5     0x12  4      OPC=movd_r32_xmm           
  retq                           #  6     0x16  1      OPC=retq                   
                                                                                  
.size target, .-target
