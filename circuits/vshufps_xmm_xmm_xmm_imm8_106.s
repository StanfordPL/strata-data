  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                      
.target:                           #        0    0      OPC=<label>                 
  vpunpckhdq %xmm3, %xmm2, %xmm13  #  1     0    4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movss %xmm13, %xmm3              #  2     0x4  5      OPC=movss_xmm_xmm           
  vunpcklps %xmm3, %xmm13, %xmm1   #  3     0x9  4      OPC=vunpcklps_xmm_xmm_xmm   
  retq                             #  4     0xd  1      OPC=retq                    
                                                                                    
.size target, .-target
