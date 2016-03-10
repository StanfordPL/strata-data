  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  xorpd %xmm6, %xmm6     #  1     0    4      OPC=xorpd_xmm_xmm     
  pmovzxwq %xmm6, %xmm1  #  2     0x4  5      OPC=pmovzxwq_xmm_xmm  
  unpcklps %xmm1, %xmm1  #  3     0x9  3      OPC=unpcklps_xmm_xmm  
  retq                   #  4     0xc  1      OPC=retq              
                                                                    
.size target, .-target
