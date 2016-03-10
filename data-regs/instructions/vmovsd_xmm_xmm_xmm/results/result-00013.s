  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vmovhlps %xmm2, %xmm2, %xmm6     #  1     0    4      OPC=vmovhlps_xmm_xmm_xmm     
  vunpcklpd %xmm3, %xmm6, %xmm2    #  2     0x4  4      OPC=vunpcklpd_xmm_xmm_xmm    
  vpunpckhqdq %xmm6, %xmm2, %xmm1  #  3     0x8  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
