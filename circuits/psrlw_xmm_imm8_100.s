  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vmovapd %xmm1, %xmm7       #  1     0    4      OPC=vmovapd_xmm_xmm    
  vorpd %xmm7, %xmm1, %xmm6  #  2     0x4  4      OPC=vorpd_xmm_xmm_xmm  
  xorps %xmm6, %xmm1         #  3     0x8  3      OPC=xorps_xmm_xmm      
  retq                       #  4     0xb  1      OPC=retq               
                                                                         
.size target, .-target
