  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                      
.target:                           #        0    0      OPC=<label>                 
  movsldup %xmm2, %xmm11           #  1     0    5      OPC=movsldup_xmm_xmm        
  vpunpckhdq %xmm11, %xmm2, %xmm3  #  2     0x5  5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovaps %xmm3, %xmm1             #  3     0xa  4      OPC=vmovaps_xmm_xmm         
  retq                             #  4     0xe  1      OPC=retq                    
                                                                                    
.size target, .-target
