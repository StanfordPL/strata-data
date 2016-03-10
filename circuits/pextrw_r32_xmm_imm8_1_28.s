  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpckhpd %xmm1, %xmm1, %xmm9  #  1     0    4      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovd %xmm9, %r13d             #  2     0x4  5      OPC=vmovd_r32_xmm          
  movzwl %r13w, %ebx             #  3     0x9  4      OPC=movzwl_r32_r16         
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
