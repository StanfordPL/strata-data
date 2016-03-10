  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  movaps %xmm2, %xmm6              #  1     0    3      OPC=movaps_xmm_xmm           
  vunpcklpd %xmm3, %xmm6, %xmm7    #  2     0x3  4      OPC=vunpcklpd_xmm_xmm_xmm    
  vpunpckhqdq %xmm6, %xmm7, %xmm1  #  3     0x7  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                             #  4     0xb  1      OPC=retq                     
                                                                                     
.size target, .-target
