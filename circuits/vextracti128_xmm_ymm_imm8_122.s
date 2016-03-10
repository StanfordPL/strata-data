  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                  
.target:                        #        0    0      OPC=<label>             
  vmovups %ymm1, %ymm14         #  1     0    4      OPC=vmovups_ymm_ymm     
  vmaxss %xmm14, %xmm14, %xmm1  #  2     0x4  5      OPC=vmaxss_xmm_xmm_xmm  
  retq                          #  3     0x9  1      OPC=retq                
                                                                             
.size target, .-target
