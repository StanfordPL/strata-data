  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vxorps %xmm4, %xmm4, %xmm14  #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  sqrtsd %xmm14, %xmm1         #  2     0x4   5      OPC=sqrtsd_xmm_xmm      
  unpcklps %xmm2, %xmm14       #  3     0x9   4      OPC=unpcklps_xmm_xmm    
  punpcklqdq %xmm14, %xmm1     #  4     0xd   5      OPC=punpcklqdq_xmm_xmm  
  retq                         #  5     0x12  1      OPC=retq                
                                                                             
.size target, .-target
