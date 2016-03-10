  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  pmovsxdq %xmm1, %xmm7       #  1     0     5      OPC=pmovsxdq_xmm_xmm    
  vxorpd %xmm1, %xmm1, %xmm0  #  2     0x5   4      OPC=vxorpd_xmm_xmm_xmm  
  sqrtss %xmm0, %xmm7         #  3     0x9   4      OPC=sqrtss_xmm_xmm      
  pmovzxwq %xmm7, %xmm1       #  4     0xd   5      OPC=pmovzxwq_xmm_xmm    
  retq                        #  5     0x12  1      OPC=retq                
                                                                            
.size target, .-target
