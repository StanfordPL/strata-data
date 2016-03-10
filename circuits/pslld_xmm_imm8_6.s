  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  paddd %xmm1, %xmm1           #  1     0     4      OPC=paddd_xmm_xmm       
  vpaddd %xmm1, %xmm1, %xmm5   #  2     0x4   4      OPC=vpaddd_xmm_xmm_xmm  
  vpaddd %ymm5, %ymm5, %ymm15  #  3     0x8   4      OPC=vpaddd_ymm_ymm_ymm  
  paddd %xmm15, %xmm15         #  4     0xc   5      OPC=paddd_xmm_xmm       
  paddd %xmm15, %xmm15         #  5     0x11  5      OPC=paddd_xmm_xmm       
  paddd %xmm15, %xmm15         #  6     0x16  5      OPC=paddd_xmm_xmm       
  movups %xmm15, %xmm1         #  7     0x1b  4      OPC=movups_xmm_xmm      
  retq                         #  8     0x1f  1      OPC=retq                
                                                                             
.size target, .-target
