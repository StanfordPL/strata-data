  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vbroadcastss %xmm1, %ymm8  #  1     0    5      OPC=vbroadcastss_ymm_xmm  
  vmovd %xmm8, %ebx          #  2     0x5  4      OPC=vmovd_r32_xmm         
  retq                       #  3     0x9  1      OPC=retq                  
                                                                            
.size target, .-target
