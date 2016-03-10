  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovapd %xmm1, %xmm11           #  1     0     4      OPC=vmovapd_xmm_xmm        
  vpmovsxdq %xmm2, %ymm4          #  2     0x4   5      OPC=vpmovsxdq_ymm_xmm      
  vunpckhps %xmm4, %xmm11, %xmm5  #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  pxor %xmm11, %xmm1              #  4     0xd   5      OPC=pxor_xmm_xmm           
  unpcklpd %xmm5, %xmm1           #  5     0x12  4      OPC=unpcklpd_xmm_xmm       
  retq                            #  6     0x16  1      OPC=retq                   
                                                                                   
.size target, .-target
