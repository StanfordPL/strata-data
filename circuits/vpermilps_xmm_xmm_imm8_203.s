  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmovdqa %xmm2, %xmm13          #  1     0     4      OPC=vmovdqa_xmm_xmm        
  vbroadcastss %xmm13, %xmm3     #  2     0x4   5      OPC=vbroadcastss_xmm_xmm   
  vunpckhps %xmm3, %xmm2, %xmm3  #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  unpckhps %xmm13, %xmm3         #  4     0xd   4      OPC=unpckhps_xmm_xmm       
  vmovups %xmm3, %xmm1           #  5     0x11  4      OPC=vmovups_xmm_xmm        
  retq                           #  6     0x15  1      OPC=retq                   
                                                                                  
.size target, .-target
