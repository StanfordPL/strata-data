  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  vmovups %xmm2, %xmm2   #  1     0    4      OPC=vmovups_xmm_xmm  
  vmovdqu %ymm2, %ymm13  #  2     0x4  4      OPC=vmovdqu_ymm_ymm  
  pand %xmm13, %xmm1     #  3     0x8  5      OPC=pand_xmm_xmm     
  retq                   #  4     0xd  1      OPC=retq             
                                                                   
.size target, .-target
