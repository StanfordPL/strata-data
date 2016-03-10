  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vmovshdup %xmm1, %xmm8         #  1     0     4      OPC=vmovshdup_xmm_xmm     
  vpmovzxbq %xmm8, %ymm14        #  2     0x4   5      OPC=vpmovzxbq_ymm_xmm     
  vandps %xmm14, %xmm14, %xmm13  #  3     0x9   5      OPC=vandps_xmm_xmm_xmm    
  vmovups %ymm8, %ymm0           #  4     0xe   5      OPC=vmovups_ymm_ymm       
  vmovhlps %xmm0, %xmm13, %xmm3  #  5     0x13  4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovd %xmm3, %ebx              #  6     0x17  4      OPC=vmovd_r32_xmm         
  retq                           #  7     0x1b  1      OPC=retq                  
                                                                                 
.size target, .-target
