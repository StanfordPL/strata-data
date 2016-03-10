  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  pmovsxdq %xmm2, %xmm10           #  1     0     6      OPC=pmovsxdq_xmm_xmm        
  vbroadcastss %xmm2, %xmm0        #  2     0x6   5      OPC=vbroadcastss_xmm_xmm    
  vpunpckhdq %xmm10, %xmm2, %xmm6  #  3     0xb   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovlhps %xmm0, %xmm6, %xmm1     #  4     0x10  4      OPC=vmovlhps_xmm_xmm_xmm    
  retq                             #  5     0x14  1      OPC=retq                    
                                                                                     
.size target, .-target
