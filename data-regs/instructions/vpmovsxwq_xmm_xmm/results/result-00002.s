  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  pmovsxwd %xmm4, %xmm14                        #  2     0x5   6      OPC=pmovsxwd_xmm_xmm    
  vmovshdup %xmm5, %xmm13                       #  3     0xb   4      OPC=vmovshdup_xmm_xmm   
  pmovsxdq %xmm14, %xmm4                        #  4     0xf   6      OPC=pmovsxdq_xmm_xmm    
  vmulsd %xmm4, %xmm4, %xmm5                    #  5     0x15  4      OPC=vmulsd_xmm_xmm_xmm  
  vsubss %xmm13, %xmm5, %xmm2                   #  6     0x19  5      OPC=vsubss_xmm_xmm_xmm  
  vaddss %xmm14, %xmm2, %xmm1                   #  7     0x1e  5      OPC=vaddss_xmm_xmm_xmm  
  retq                                          #  8     0x23  1      OPC=retq                
                                                                                              
.size target, .-target
