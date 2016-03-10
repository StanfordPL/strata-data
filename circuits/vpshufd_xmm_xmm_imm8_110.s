  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovhlps %xmm2, %xmm2, %xmm12    #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm    
  vmovdqa %xmm12, %xmm5            #  2     0x4   5      OPC=vmovdqa_xmm_xmm         
  vpunpckhdq %xmm12, %xmm5, %xmm0  #  3     0x9   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpunpckldq %xmm2, %xmm0, %xmm2   #  4     0xe   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovsd %xmm5, %xmm2, %xmm1       #  5     0x12  4      OPC=vmovsd_xmm_xmm_xmm      
  retq                             #  6     0x16  1      OPC=retq                    
                                                                                     
.size target, .-target
