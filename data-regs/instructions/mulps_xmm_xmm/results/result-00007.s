  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmulps %xmm2, %xmm1, %xmm13  #  1     0    4      OPC=vmulps_xmm_xmm_xmm  
  movdqa %xmm13, %xmm1         #  2     0x4  5      OPC=movdqa_xmm_xmm      
  retq                         #  3     0x9  1      OPC=retq                
                                                                            
.size target, .-target
