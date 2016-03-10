  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpandn %xmm1, %xmm1, %xmm7  #  1     0    4      OPC=vpandn_xmm_xmm_xmm  
  cvttpd2dq %xmm7, %xmm13     #  2     0x4  5      OPC=cvttpd2dq_xmm_xmm   
  pmovzxbq %xmm13, %xmm1      #  3     0x9  6      OPC=pmovzxbq_xmm_xmm    
  retq                        #  4     0xf  1      OPC=retq                
                                                                           
.size target, .-target
