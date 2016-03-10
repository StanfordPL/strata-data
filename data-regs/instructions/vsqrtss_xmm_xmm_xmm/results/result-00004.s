  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  sqrtps %xmm3, %xmm13         #  1     0    4      OPC=sqrtps_xmm_xmm      
  vmovss %xmm13, %xmm2, %xmm5  #  2     0x4  5      OPC=vmovss_xmm_xmm_xmm  
  vmovdqa %xmm5, %xmm1         #  3     0x9  4      OPC=vmovdqa_xmm_xmm     
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
