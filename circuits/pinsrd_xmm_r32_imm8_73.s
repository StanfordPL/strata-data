  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovd %ebx, %xmm14               #  1     0     4      OPC=vmovd_xmm_r32          
  vmovlhps %xmm1, %xmm1, %xmm7     #  2     0x4   4      OPC=vmovlhps_xmm_xmm_xmm   
  vmovddup %ymm14, %ymm14          #  3     0x8   5      OPC=vmovddup_ymm_ymm       
  vmovups %xmm7, %xmm12            #  4     0xd   4      OPC=vmovups_xmm_xmm        
  vunpckhps %xmm14, %xmm12, %xmm8  #  5     0x11  5      OPC=vunpckhps_xmm_xmm_xmm  
  movsd %xmm8, %xmm1               #  6     0x16  5      OPC=movsd_xmm_xmm          
  retq                             #  7     0x1b  1      OPC=retq                   
                                                                                    
.size target, .-target
