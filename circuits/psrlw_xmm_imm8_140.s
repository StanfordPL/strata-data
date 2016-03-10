  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vandnps %xmm1, %xmm1, %xmm13  #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  pmovzxbq %xmm13, %xmm1        #  2     0x4  6      OPC=pmovzxbq_xmm_xmm     
  retq                          #  3     0xa  1      OPC=retq                 
                                                                              
.size target, .-target
