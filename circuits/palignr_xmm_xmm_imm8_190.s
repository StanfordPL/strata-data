  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vxorpd %xmm4, %xmm4, %xmm7       #  1     0    4      OPC=vxorpd_xmm_xmm_xmm       
  vpunpckhqdq %xmm7, %xmm7, %xmm8  #  2     0x4  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  pmovzxwd %xmm8, %xmm1            #  3     0x8  6      OPC=pmovzxwd_xmm_xmm         
  retq                             #  4     0xe  1      OPC=retq                     
                                                                                     
.size target, .-target
