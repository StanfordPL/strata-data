  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                      
.target:                           #        0    0      OPC=<label>                 
  vpunpckhdq %xmm2, %xmm2, %xmm12  #  1     0    4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovss %xmm12, %xmm2, %xmm1      #  2     0x4  5      OPC=vmovss_xmm_xmm_xmm      
  punpckldq %xmm12, %xmm1          #  3     0x9  5      OPC=punpckldq_xmm_xmm       
  retq                             #  4     0xe  1      OPC=retq                    
                                                                                    
.size target, .-target
