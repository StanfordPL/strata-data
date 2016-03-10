  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vmovupd %xmm3, %xmm9         #  1     0    4      OPC=vmovupd_xmm_xmm      
  minsd %xmm9, %xmm3           #  2     0x4  5      OPC=minsd_xmm_xmm        
  vandnpd %ymm3, %ymm9, %ymm1  #  3     0x9  4      OPC=vandnpd_ymm_ymm_ymm  
  retq                         #  4     0xd  1      OPC=retq                 
                                                                             
.size target, .-target
