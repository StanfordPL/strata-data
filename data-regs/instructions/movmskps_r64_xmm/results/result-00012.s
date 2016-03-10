  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vpand %xmm1, %xmm1, %xmm2  #  1     0    4      OPC=vpand_xmm_xmm_xmm  
  vmovdqu %xmm2, %xmm13      #  2     0x4  4      OPC=vmovdqu_xmm_xmm    
  vmovmskps %xmm13, %rbx     #  3     0x8  5      OPC=vmovmskps_r64_xmm  
  retq                       #  4     0xd  1      OPC=retq               
                                                                         
.size target, .-target
