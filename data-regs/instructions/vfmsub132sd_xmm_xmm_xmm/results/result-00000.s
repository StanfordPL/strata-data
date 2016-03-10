  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vsubpd %xmm1, %xmm1, %xmm10      #  1     0     4      OPC=vsubpd_xmm_xmm_xmm       
  vcvtdq2pd %xmm10, %xmm10         #  2     0x4   5      OPC=vcvtdq2pd_xmm_xmm        
  paddd %xmm10, %xmm3              #  3     0x9   5      OPC=paddd_xmm_xmm            
  vfmsub213sd %xmm2, %xmm3, %xmm1  #  4     0xe   5      OPC=vfmsub213sd_xmm_xmm_xmm  
  retq                             #  5     0x13  1      OPC=retq                     
                                                                                      
.size target, .-target
