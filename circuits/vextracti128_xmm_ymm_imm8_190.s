  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vpor %xmm1, %xmm1, %xmm11    #  1     0    4      OPC=vpor_xmm_xmm_xmm    
  vminpd %xmm1, %xmm11, %xmm9  #  2     0x4  4      OPC=vminpd_xmm_xmm_xmm  
  vminss %xmm9, %xmm11, %xmm1  #  3     0x8  5      OPC=vminss_xmm_xmm_xmm  
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
