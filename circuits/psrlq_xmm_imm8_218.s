  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                  
.target:                         #        0    0      OPC=<label>             
  vxorps %xmm12, %xmm12, %xmm14  #  1     0    5      OPC=vxorps_xmm_xmm_xmm  
  vmulpd %xmm14, %xmm14, %xmm12  #  2     0x5  5      OPC=vmulpd_xmm_xmm_xmm  
  cvtps2pd %xmm12, %xmm1         #  3     0xa  4      OPC=cvtps2pd_xmm_xmm    
  retq                           #  4     0xe  1      OPC=retq                
                                                                              
.size target, .-target
