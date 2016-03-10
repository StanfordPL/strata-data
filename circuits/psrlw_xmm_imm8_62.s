  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vxorpd %xmm4, %xmm4, %xmm11  #  1     0    4      OPC=vxorpd_xmm_xmm_xmm  
  pmovzxwq %xmm11, %xmm1       #  2     0x4  6      OPC=pmovzxwq_xmm_xmm    
  retq                         #  3     0xa  1      OPC=retq                
                                                                            
.size target, .-target
