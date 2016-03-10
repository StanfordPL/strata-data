  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmaxpd %ymm2, %ymm2, %ymm14  #  1     0    4      OPC=vmaxpd_ymm_ymm_ymm  
  andpd %xmm2, %xmm14          #  2     0x4  5      OPC=andpd_xmm_xmm       
  vandpd %ymm14, %ymm3, %ymm1  #  3     0x9  5      OPC=vandpd_ymm_ymm_ymm  
  retq                         #  4     0xe  1      OPC=retq                
                                                                            
.size target, .-target
