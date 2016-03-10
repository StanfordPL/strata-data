  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                 #  Line  RIP  Bytes  Opcode              
.target:               #        0    0      OPC=<label>         
  divpd %xmm1, %xmm1   #  1     0    4      OPC=divpd_xmm_xmm   
  haddpd %xmm1, %xmm1  #  2     0x4  4      OPC=haddpd_xmm_xmm  
  andnps %xmm1, %xmm1  #  3     0x8  3      OPC=andnps_xmm_xmm  
  retq                 #  4     0xb  1      OPC=retq            
                                                                
.size target, .-target
