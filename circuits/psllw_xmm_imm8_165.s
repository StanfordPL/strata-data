  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                  
.target:                         #        0    0      OPC=<label>             
  vxorpd %xmm13, %xmm13, %xmm13  #  1     0    5      OPC=vxorpd_xmm_xmm_xmm  
  movdqa %xmm13, %xmm1           #  2     0x5  5      OPC=movdqa_xmm_xmm      
  addsubpd %xmm1, %xmm1          #  3     0xa  4      OPC=addsubpd_xmm_xmm    
  retq                           #  4     0xe  1      OPC=retq                
                                                                              
.size target, .-target
