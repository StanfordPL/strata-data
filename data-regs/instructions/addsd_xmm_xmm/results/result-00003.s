  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vaddpd %xmm2, %xmm1, %xmm7  #  1     0    4      OPC=vaddpd_xmm_xmm_xmm  
  vmaxps %ymm7, %ymm7, %ymm9  #  2     0x4  4      OPC=vmaxps_ymm_ymm_ymm  
  movsd %xmm9, %xmm1          #  3     0x8  5      OPC=movsd_xmm_xmm       
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
