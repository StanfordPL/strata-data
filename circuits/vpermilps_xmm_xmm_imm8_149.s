  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovshdup %xmm2, %xmm9           #  1     0     4      OPC=vmovshdup_xmm_xmm       
  vpunpckldq %xmm2, %xmm2, %xmm15  #  2     0x4   4      OPC=vpunpckldq_xmm_xmm_xmm  
  punpckhdq %xmm2, %xmm15          #  3     0x8   5      OPC=punpckhdq_xmm_xmm       
  vunpcklps %xmm15, %xmm9, %xmm1   #  4     0xd   5      OPC=vunpcklps_xmm_xmm_xmm   
  retq                             #  5     0x12  1      OPC=retq                    
                                                                                     
.size target, .-target
