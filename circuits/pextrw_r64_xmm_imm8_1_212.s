  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpckhpd %xmm1, %xmm1, %xmm7  #  1     0    4      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovd %xmm7, %r12d             #  2     0x4  5      OPC=vmovd_r32_xmm          
  movzwq %r12w, %rbx             #  3     0x9  4      OPC=movzwq_r64_r16         
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
