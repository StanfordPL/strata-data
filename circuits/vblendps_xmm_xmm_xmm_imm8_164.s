  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vmovshdup %xmm2, %xmm1           #  1     0    4      OPC=vmovshdup_xmm_xmm        
  vpunpckhdq %xmm1, %xmm3, %xmm7   #  2     0x4  4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vpunpcklqdq %xmm7, %xmm2, %xmm1  #  3     0x8  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
