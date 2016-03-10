  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  movhlps %xmm1, %xmm1   #  1     0    3      OPC=movhlps_xmm_xmm  
  vmovdqa %xmm1, %xmm14  #  2     0x3  4      OPC=vmovdqa_xmm_xmm  
  movq %xmm14, %rbx      #  3     0x7  5      OPC=movq_r64_xmm     
  retq                   #  4     0xc  1      OPC=retq             
                                                                   
.size target, .-target
