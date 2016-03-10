  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                    
.target:                         #        0    0      OPC=<label>               
  vmovshdup %xmm1, %xmm4         #  1     0    4      OPC=vmovshdup_xmm_xmm     
  vmovhlps %xmm4, %xmm1, %xmm13  #  2     0x4  4      OPC=vmovhlps_xmm_xmm_xmm  
  movd %xmm13, %ebx              #  3     0x8  5      OPC=movd_r32_xmm          
  retq                           #  4     0xd  1      OPC=retq                  
                                                                                
.size target, .-target
