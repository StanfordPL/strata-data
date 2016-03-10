  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vandpd %xmm1, %xmm1, %xmm7     #  1     0     4      OPC=vandpd_xmm_xmm_xmm     
  vunpckhps %ymm7, %ymm7, %ymm7  #  2     0x4   4      OPC=vunpckhps_ymm_ymm_ymm  
  vmovd %xmm7, %r9d              #  3     0x8   5      OPC=vmovd_r32_xmm          
  movzwq %r9w, %rbx              #  4     0xd   4      OPC=movzwq_r64_r16         
  retq                           #  5     0x11  1      OPC=retq                   
                                                                                  
.size target, .-target
