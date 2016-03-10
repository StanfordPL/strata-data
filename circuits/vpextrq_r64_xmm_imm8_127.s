  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vaddss %xmm1, %xmm1, %xmm2     #  1     0    4      OPC=vaddss_xmm_xmm_xmm     
  vunpckhpd %xmm2, %xmm1, %xmm8  #  2     0x4  4      OPC=vunpckhpd_xmm_xmm_xmm  
  movq %xmm8, %rbx               #  3     0x8  5      OPC=movq_r64_xmm           
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
