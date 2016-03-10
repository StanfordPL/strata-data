  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vmovaps %xmm3, %xmm8       #  1     0    4      OPC=vmovaps_xmm_xmm    
  punpcklwd %xmm8, %xmm2     #  2     0x4  5      OPC=punpcklwd_xmm_xmm  
  vpand %xmm2, %xmm2, %xmm1  #  3     0x9  4      OPC=vpand_xmm_xmm_xmm  
  retq                       #  4     0xd  1      OPC=retq               
                                                                         
.size target, .-target
