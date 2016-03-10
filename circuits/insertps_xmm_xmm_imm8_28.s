  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  movdqa %xmm2, %xmm9            #  1     0    5      OPC=movdqa_xmm_xmm         
  vunpcklps %xmm9, %xmm1, %xmm4  #  2     0x5  5      OPC=vunpcklps_xmm_xmm_xmm  
  movq %xmm4, %xmm1              #  3     0xa  4      OPC=movq_xmm_xmm           
  retq                           #  4     0xe  1      OPC=retq                   
                                                                                 
.size target, .-target
