  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vunpcklps %xmm2, %xmm2, %xmm14  #  1     0     4      OPC=vunpcklps_xmm_xmm_xmm  
  vunpckhps %xmm2, %xmm14, %xmm1  #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm  
  vunpcklps %xmm1, %xmm3, %xmm7   #  3     0x8   4      OPC=vunpcklps_xmm_xmm_xmm  
  pand %xmm7, %xmm7               #  4     0xc   4      OPC=pand_xmm_xmm           
  vunpckhps %xmm3, %xmm7, %xmm12  #  5     0x10  4      OPC=vunpckhps_xmm_xmm_xmm  
  unpcklpd %xmm12, %xmm1          #  6     0x14  5      OPC=unpcklpd_xmm_xmm       
  retq                            #  7     0x19  1      OPC=retq                   
                                                                                   
.size target, .-target
