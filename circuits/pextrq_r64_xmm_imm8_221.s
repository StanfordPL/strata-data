  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpcklqdq %xmm1, %xmm1, %xmm0  #  1     0    4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vunpckhpd %xmm0, %xmm1, %xmm11   #  2     0x4  4      OPC=vunpckhpd_xmm_xmm_xmm    
  vmovq %xmm11, %rbx               #  3     0x8  5      OPC=vmovq_r64_xmm            
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
