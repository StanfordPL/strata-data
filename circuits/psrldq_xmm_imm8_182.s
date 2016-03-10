  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vpxor %xmm0, %xmm0, %xmm4  #  1     0    4      OPC=vpxor_xmm_xmm_xmm  
  movupd %xmm4, %xmm14       #  2     0x4  5      OPC=movupd_xmm_xmm     
  cvtdq2pd %xmm14, %xmm1     #  3     0x9  5      OPC=cvtdq2pd_xmm_xmm   
  retq                       #  4     0xe  1      OPC=retq               
                                                                         
.size target, .-target
