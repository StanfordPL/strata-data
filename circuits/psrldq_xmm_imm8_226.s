  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  pmovzxdq %xmm1, %xmm1  #  1     0    5      OPC=pmovzxdq_xmm_xmm  
  addsubpd %xmm1, %xmm1  #  2     0x5  4      OPC=addsubpd_xmm_xmm  
  unpcklpd %xmm1, %xmm1  #  3     0x9  4      OPC=unpcklpd_xmm_xmm  
  retq                   #  4     0xd  1      OPC=retq              
                                                                    
.size target, .-target
