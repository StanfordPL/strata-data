  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vmovq %xmm1, %xmm5             #  1     0    4      OPC=vmovq_xmm_xmm          
  vunpcklpd %xmm5, %xmm5, %xmm6  #  2     0x4  4      OPC=vunpcklpd_xmm_xmm_xmm  
  movq %xmm6, %rbx               #  3     0x8  5      OPC=movq_r64_xmm           
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
