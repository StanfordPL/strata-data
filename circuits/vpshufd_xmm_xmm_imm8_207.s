  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vbroadcastss %xmm2, %xmm1      #  1     0     5      OPC=vbroadcastss_xmm_xmm   
  vmovshdup %xmm2, %xmm4         #  2     0x5   4      OPC=vmovshdup_xmm_xmm      
  vunpckhps %xmm4, %xmm1, %xmm8  #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  vunpckhpd %xmm8, %xmm4, %xmm1  #  4     0xd   5      OPC=vunpckhpd_xmm_xmm_xmm  
  retq                           #  5     0x12  1      OPC=retq                   
                                                                                  
.size target, .-target
