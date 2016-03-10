  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vbroadcastss %xmm2, %xmm4      #  1     0    5      OPC=vbroadcastss_xmm_xmm   
  vunpcklps %xmm4, %xmm2, %xmm5  #  2     0x5  4      OPC=vunpcklps_xmm_xmm_xmm  
  unpckhpd %xmm5, %xmm1          #  3     0x9  4      OPC=unpckhpd_xmm_xmm       
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
