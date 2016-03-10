  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vfmsub132ps %xmm1, %xmm3, %xmm2  #  1     0    5      OPC=vfmsub132ps_xmm_xmm_xmm  
  vrcpss %xmm1, %xmm2, %xmm1       #  2     0x5  4      OPC=vrcpss_xmm_xmm_xmm       
  movapd %xmm2, %xmm1              #  3     0x9  4      OPC=movapd_xmm_xmm           
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
