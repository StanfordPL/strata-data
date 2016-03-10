  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmovdqu %ymm1, %ymm11        #  1     0    4      OPC=vmovdqu_ymm_ymm     
  vmovaps %xmm11, %xmm5        #  2     0x4  5      OPC=vmovaps_xmm_xmm     
  vmovss %xmm5, %xmm11, %xmm1  #  3     0x9  4      OPC=vmovss_xmm_xmm_xmm  
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
