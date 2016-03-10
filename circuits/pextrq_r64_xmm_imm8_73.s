  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm1, %xmm9  #  1     0    4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovddup %xmm9, %xmm8            #  2     0x4  5      OPC=vmovddup_xmm_xmm         
  movq %xmm8, %rbx                 #  3     0x9  5      OPC=movq_r64_xmm             
  retq                             #  4     0xe  1      OPC=retq                     
                                                                                     
.size target, .-target
