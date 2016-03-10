  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vxorps %xmm2, %xmm1, %xmm11  #  1     0    4      OPC=vxorps_xmm_xmm_xmm  
  vorpd %xmm11, %xmm2, %xmm13  #  2     0x4  5      OPC=vorpd_xmm_xmm_xmm   
  movdqa %xmm13, %xmm1         #  3     0x9  5      OPC=movdqa_xmm_xmm      
  retq                         #  4     0xe  1      OPC=retq                
                                                                            
.size target, .-target
