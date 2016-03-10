  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmaxps %xmm2, %xmm2, %xmm8  #  1     0    4      OPC=vmaxps_xmm_xmm_xmm  
  vrcpps %ymm8, %ymm3         #  2     0x4  5      OPC=vrcpps_ymm_ymm      
  movapd %xmm3, %xmm1         #  3     0x9  4      OPC=movapd_xmm_xmm      
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
