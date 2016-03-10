  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  vpbroadcastq %xmm1, %xmm6       #  1     0    5      OPC=vpbroadcastq_xmm_xmm    
  vpunpckldq %xmm2, %xmm6, %xmm0  #  2     0x5  4      OPC=vpunpckldq_xmm_xmm_xmm  
  movdqa %xmm0, %xmm1             #  3     0x9  4      OPC=movdqa_xmm_xmm          
  retq                            #  4     0xd  1      OPC=retq                    
                                                                                   
.size target, .-target
