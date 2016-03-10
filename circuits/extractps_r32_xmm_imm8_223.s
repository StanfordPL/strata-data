  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vpmovsxbq %xmm1, %xmm0         #  1     0     5      OPC=vpmovsxbq_xmm_xmm      
  vunpckhpd %xmm0, %xmm1, %xmm1  #  2     0x5   4      OPC=vunpckhpd_xmm_xmm_xmm  
  movshdup %xmm1, %xmm11         #  3     0x9   5      OPC=movshdup_xmm_xmm       
  movd %xmm11, %ebx              #  4     0xe   5      OPC=movd_r32_xmm           
  retq                           #  5     0x13  1      OPC=retq                   
                                                                                  
.size target, .-target
