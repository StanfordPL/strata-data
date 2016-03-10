  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP  Bytes  Opcode                       
.target:                             #        0    0      OPC=<label>                  
  vmulss %xmm2, %xmm2, %xmm11        #  1     0    4      OPC=vmulss_xmm_xmm_xmm       
  vpunpckhqdq %xmm11, %xmm2, %xmm13  #  2     0x4  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  unpcklpd %xmm13, %xmm1             #  3     0x9  5      OPC=unpcklpd_xmm_xmm         
  retq                               #  4     0xe  1      OPC=retq                     
                                                                                       
.size target, .-target
