  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vminps %xmm1, %xmm1, %xmm5     #  1     0     4      OPC=vminps_xmm_xmm_xmm     
  vunpckhps %xmm5, %xmm1, %xmm3  #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm  
  vpmovzxwq %xmm3, %ymm14        #  3     0x8   5      OPC=vpmovzxwq_ymm_xmm      
  vmovd %xmm14, %eax             #  4     0xd   4      OPC=vmovd_r32_xmm          
  movl %eax, %ebx                #  5     0x11  2      OPC=movl_r32_r32           
  retq                           #  6     0x13  1      OPC=retq                   
                                                                                  
.size target, .-target
