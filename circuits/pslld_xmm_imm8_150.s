  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  cvtdq2ps %xmm1, %xmm1  #  1     0    3      OPC=cvtdq2ps_xmm_xmm  
  addsubpd %xmm1, %xmm1  #  2     0x3  4      OPC=addsubpd_xmm_xmm  
  unpcklpd %xmm1, %xmm1  #  3     0x7  4      OPC=unpcklpd_xmm_xmm  
  retq                   #  4     0xb  1      OPC=retq              
                                                                    
.size target, .-target
