  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vandnps %xmm1, %xmm1, %xmm3  #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  cvtdq2ps %xmm3, %xmm1        #  2     0x4  3      OPC=cvtdq2ps_xmm_xmm     
  mulpd %xmm1, %xmm1           #  3     0x7  4      OPC=mulpd_xmm_xmm        
  retq                         #  4     0xb  1      OPC=retq                 
                                                                             
.size target, .-target
