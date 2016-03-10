  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmaxps %xmm2, %xmm2, %xmm11  #  1     0    4      OPC=vmaxps_xmm_xmm_xmm  
  vmovshdup %xmm11, %xmm13     #  2     0x4  5      OPC=vmovshdup_xmm_xmm   
  movsldup %xmm13, %xmm1       #  3     0x9  5      OPC=movsldup_xmm_xmm    
  retq                         #  4     0xe  1      OPC=retq                
                                                                            
.size target, .-target
