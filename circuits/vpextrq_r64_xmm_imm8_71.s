  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vmovsd %xmm1, %xmm1, %xmm5     #  1     0    4      OPC=vmovsd_xmm_xmm_xmm     
  vunpckhpd %xmm5, %xmm5, %xmm1  #  2     0x4  4      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovq %xmm1, %rbx              #  3     0x8  5      OPC=vmovq_r64_xmm          
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
