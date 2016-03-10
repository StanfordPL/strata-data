  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vorpd %xmm1, %xmm1, %xmm5  #  1     0    4      OPC=vorpd_xmm_xmm_xmm  
  pand %xmm5, %xmm2          #  2     0x4  4      OPC=pand_xmm_xmm       
  andpd %xmm2, %xmm1         #  3     0x8  4      OPC=andpd_xmm_xmm      
  retq                       #  4     0xc  1      OPC=retq               
                                                                         
.size target, .-target
