  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpckhps %xmm1, %xmm2, %xmm3  #  1     0    4      OPC=vunpckhps_xmm_xmm_xmm  
  punpckldq %xmm2, %xmm1         #  2     0x4  4      OPC=punpckldq_xmm_xmm      
  phaddd %xmm3, %xmm1            #  3     0x8  5      OPC=phaddd_xmm_xmm         
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
