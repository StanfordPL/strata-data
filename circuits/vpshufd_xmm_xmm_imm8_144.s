  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  movsldup %xmm2, %xmm8          #  1     0     5      OPC=movsldup_xmm_xmm       
  vmovlhps %xmm2, %xmm2, %xmm1   #  2     0x5   4      OPC=vmovlhps_xmm_xmm_xmm   
  punpckhdq %xmm8, %xmm1         #  3     0x9   5      OPC=punpckhdq_xmm_xmm      
  vunpcklps %xmm1, %xmm2, %xmm1  #  4     0xe   4      OPC=vunpcklps_xmm_xmm_xmm  
  retq                           #  5     0x12  1      OPC=retq                   
                                                                                  
.size target, .-target
