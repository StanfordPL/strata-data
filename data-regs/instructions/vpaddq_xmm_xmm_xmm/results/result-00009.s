  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  paddq %xmm3, %xmm2     #  1     0    4      OPC=paddq_xmm_xmm    
  vmovapd %xmm2, %xmm13  #  2     0x4  4      OPC=vmovapd_xmm_xmm  
  vmovaps %xmm13, %xmm1  #  3     0x8  5      OPC=vmovaps_xmm_xmm  
  retq                   #  4     0xd  1      OPC=retq             
                                                                   
.size target, .-target
