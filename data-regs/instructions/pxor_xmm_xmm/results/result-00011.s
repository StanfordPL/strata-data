  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vpxor %xmm1, %xmm2, %xmm0  #  1     0    4      OPC=vpxor_xmm_xmm_xmm  
  vmovdqa %xmm0, %xmm8       #  2     0x4  4      OPC=vmovdqa_xmm_xmm    
  movdqa %xmm8, %xmm1        #  3     0x8  5      OPC=movdqa_xmm_xmm     
  retq                       #  4     0xd  1      OPC=retq               
                                                                         
.size target, .-target
