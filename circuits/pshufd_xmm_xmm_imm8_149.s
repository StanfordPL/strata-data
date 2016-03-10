  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vpmovsxdq %xmm2, %xmm10         #  1     0     5      OPC=vpmovsxdq_xmm_xmm      
  vunpckhps %xmm2, %xmm10, %xmm2  #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  movsldup %xmm2, %xmm1           #  3     0x9   4      OPC=movsldup_xmm_xmm       
  vmovddup %xmm2, %xmm4           #  4     0xd   4      OPC=vmovddup_xmm_xmm       
  unpcklpd %xmm4, %xmm1           #  5     0x11  4      OPC=unpcklpd_xmm_xmm       
  retq                            #  6     0x15  1      OPC=retq                   
                                                                                   
.size target, .-target
