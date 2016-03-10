  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  mulss %xmm1, %xmm1           #  1     0    4      OPC=mulss_xmm_xmm        
  vandnpd %xmm1, %xmm1, %xmm9  #  2     0x4  4      OPC=vandnpd_xmm_xmm_xmm  
  cvtps2pd %xmm9, %xmm1        #  3     0x8  4      OPC=cvtps2pd_xmm_xmm     
  retq                         #  4     0xc  1      OPC=retq                 
                                                                             
.size target, .-target
