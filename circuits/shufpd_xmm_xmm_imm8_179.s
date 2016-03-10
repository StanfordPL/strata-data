  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vsubss %xmm1, %xmm2, %xmm8  #  1     0    4      OPC=vsubss_xmm_xmm_xmm  
  punpckhqdq %xmm8, %xmm1     #  2     0x4  5      OPC=punpckhqdq_xmm_xmm  
  retq                        #  3     0x9  1      OPC=retq                
                                                                           
.size target, .-target
