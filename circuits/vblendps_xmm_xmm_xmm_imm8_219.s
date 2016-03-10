  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vmovshdup %xmm3, %xmm9           #  1     0    4      OPC=vmovshdup_xmm_xmm        
  vpunpckhdq %xmm9, %xmm2, %xmm1   #  2     0x4  5      OPC=vpunpckhdq_xmm_xmm_xmm   
  vpunpcklqdq %xmm1, %xmm3, %xmm1  #  3     0x9  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
