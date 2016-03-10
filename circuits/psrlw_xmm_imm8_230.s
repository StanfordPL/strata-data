  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP   Bytes  Opcode                 
.target:                     #        0     0      OPC=<label>            
  vpxor %xmm1, %xmm1, %xmm8  #  1     0     4      OPC=vpxor_xmm_xmm_xmm  
  vsqrtpd %xmm8, %xmm4       #  2     0x4   5      OPC=vsqrtpd_xmm_xmm    
  pmovsxdq %xmm4, %xmm8      #  3     0x9   6      OPC=pmovsxdq_xmm_xmm   
  movlhps %xmm4, %xmm1       #  4     0xf   3      OPC=movlhps_xmm_xmm    
  unpckhps %xmm8, %xmm1      #  5     0x12  4      OPC=unpckhps_xmm_xmm   
  retq                       #  6     0x16  1      OPC=retq               
                                                                          
.size target, .-target
