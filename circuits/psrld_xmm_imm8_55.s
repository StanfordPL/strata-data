  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  cvttpd2dq %xmm1, %xmm7  #  1     0    4      OPC=cvttpd2dq_xmm_xmm  
  unpckhps %xmm1, %xmm7   #  2     0x4  3      OPC=unpckhps_xmm_xmm   
  pmovzxbq %xmm7, %xmm1   #  3     0x7  5      OPC=pmovzxbq_xmm_xmm   
  retq                    #  4     0xc  1      OPC=retq               
                                                                      
.size target, .-target
