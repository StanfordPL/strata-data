  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  vmovdqa %xmm1, %xmm11  #  1     0    4      OPC=vmovdqa_xmm_xmm  
  por %xmm11, %xmm2      #  2     0x4  5      OPC=por_xmm_xmm      
  xorps %xmm2, %xmm1     #  3     0x9  3      OPC=xorps_xmm_xmm    
  retq                   #  4     0xc  1      OPC=retq             
                                                                   
.size target, .-target
