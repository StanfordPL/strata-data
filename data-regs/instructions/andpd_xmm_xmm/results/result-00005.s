  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                   
.target:                         #        0    0      OPC=<label>              
  vpxor %xmm2, %xmm1, %xmm15     #  1     0    4      OPC=vpxor_xmm_xmm_xmm    
  vandnps %xmm2, %xmm15, %xmm14  #  2     0x4  4      OPC=vandnps_xmm_xmm_xmm  
  pand %xmm14, %xmm1             #  3     0x8  5      OPC=pand_xmm_xmm         
  retq                           #  4     0xd  1      OPC=retq                 
                                                                               
.size target, .-target
