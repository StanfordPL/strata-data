  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vpxor %xmm1, %xmm1, %xmm0  #  1     0    4      OPC=vpxor_xmm_xmm_xmm  
  vmovq %xmm0, %xmm8         #  2     0x4  4      OPC=vmovq_xmm_xmm      
  pmovzxbd %xmm8, %xmm1      #  3     0x8  6      OPC=pmovzxbd_xmm_xmm   
  retq                       #  4     0xe  1      OPC=retq               
                                                                         
.size target, .-target
