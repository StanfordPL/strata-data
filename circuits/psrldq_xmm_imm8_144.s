  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  movsldup %xmm1, %xmm7  #  1     0    4      OPC=movsldup_xmm_xmm  
  pmovzxdq %xmm7, %xmm1  #  2     0x4  5      OPC=pmovzxdq_xmm_xmm  
  hsubpd %xmm1, %xmm1    #  3     0x9  4      OPC=hsubpd_xmm_xmm    
  retq                   #  4     0xd  1      OPC=retq              
                                                                    
.size target, .-target
