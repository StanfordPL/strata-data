  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm2, %xmm3, %xmm4       #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpckhpd %xmm4, %xmm12, %xmm1       #  3     0x9   4      OPC=vunpckhpd_xmm_xmm_xmm   
  vmovss %xmm2, %xmm1, %xmm1           #  4     0xd   4      OPC=vmovss_xmm_xmm_xmm      
  retq                                 #  5     0x11  1      OPC=retq                    
                                                                                         
.size target, .-target
