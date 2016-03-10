  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmovd %ebx, %xmm11             #  1     0     4      OPC=vmovd_xmm_r32          
  movq %xmm1, %xmm5              #  2     0x4   4      OPC=movq_xmm_xmm           
  haddpd %xmm11, %xmm5           #  3     0x8   5      OPC=haddpd_xmm_xmm         
  vpmovzxbq %xmm1, %ymm6         #  4     0xd   5      OPC=vpmovzxbq_ymm_xmm      
  vunpckhpd %xmm6, %xmm5, %xmm7  #  5     0x12  4      OPC=vunpckhpd_xmm_xmm_xmm  
  movss %xmm7, %xmm1             #  6     0x16  4      OPC=movss_xmm_xmm          
  retq                           #  7     0x1a  1      OPC=retq                   
                                                                                  
.size target, .-target
