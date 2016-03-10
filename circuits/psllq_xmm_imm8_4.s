  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                  
.target:                         #        0     0      OPC=<label>             
  vpaddq %xmm1, %xmm1, %xmm5     #  1     0     4      OPC=vpaddq_xmm_xmm_xmm  
  vpaddq %xmm5, %xmm5, %xmm5     #  2     0x4   4      OPC=vpaddq_xmm_xmm_xmm  
  vpaddq %xmm5, %xmm5, %xmm13    #  3     0x8   4      OPC=vpaddq_xmm_xmm_xmm  
  vpaddq %xmm13, %xmm13, %xmm14  #  4     0xc   5      OPC=vpaddq_xmm_xmm_xmm  
  movups %xmm14, %xmm1           #  5     0x11  4      OPC=movups_xmm_xmm      
  retq                           #  6     0x15  1      OPC=retq                
                                                                               
.size target, .-target
