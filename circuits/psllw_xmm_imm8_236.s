  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vxorps %xmm1, %xmm1, %xmm11  #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  vaddsd %xmm11, %xmm1, %xmm7  #  2     0x4   5      OPC=vaddsd_xmm_xmm_xmm  
  andnps %xmm7, %xmm1          #  3     0x9   3      OPC=andnps_xmm_xmm      
  punpckldq %xmm1, %xmm1       #  4     0xc   4      OPC=punpckldq_xmm_xmm   
  retq                         #  5     0x10  1      OPC=retq                
                                                                             
.size target, .-target
