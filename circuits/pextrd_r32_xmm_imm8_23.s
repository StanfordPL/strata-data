  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vmovshdup %xmm1, %xmm9           #  1     0    4      OPC=vmovshdup_xmm_xmm        
  vpunpckhqdq %xmm9, %xmm9, %xmm9  #  2     0x4  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movd %xmm9, %ebx                 #  3     0x9  5      OPC=movd_r32_xmm             
  retq                             #  4     0xe  1      OPC=retq                     
                                                                                     
.size target, .-target
