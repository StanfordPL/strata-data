  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                  
.target:                         #        0    0      OPC=<label>             
  vxorpd %xmm12, %xmm12, %xmm15  #  1     0    5      OPC=vxorpd_xmm_xmm_xmm  
  pmovzxwq %xmm15, %xmm1         #  2     0x5  6      OPC=pmovzxwq_xmm_xmm    
  retq                           #  3     0xb  1      OPC=retq                
                                                                              
.size target, .-target
