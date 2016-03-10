  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmaxss %xmm2, %xmm1, %xmm8  #  1     0    4      OPC=vmaxss_xmm_xmm_xmm  
  vminpd %ymm8, %ymm8, %ymm8  #  2     0x4  5      OPC=vminpd_ymm_ymm_ymm  
  movss %xmm8, %xmm1          #  3     0x9  5      OPC=movss_xmm_xmm       
  retq                        #  4     0xe  1      OPC=retq                
                                                                           
.size target, .-target
