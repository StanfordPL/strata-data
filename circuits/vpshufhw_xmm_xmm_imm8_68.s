  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpckhdq %xmm2, %xmm2, %xmm14  #  1     0    4      OPC=vpunpckhdq_xmm_xmm_xmm   
  movsldup %xmm14, %xmm7           #  2     0x4  5      OPC=movsldup_xmm_xmm         
  vpunpcklqdq %xmm7, %xmm2, %xmm1  #  3     0x9  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
