  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovd %ebx, %xmm13               #  1     0     4      OPC=vmovd_xmm_r32          
  vbroadcastss %xmm1, %xmm4        #  2     0x4   5      OPC=vbroadcastss_xmm_xmm   
  vunpcklps %ymm13, %ymm4, %ymm15  #  3     0x9   5      OPC=vunpcklps_ymm_ymm_ymm  
  movsd %xmm15, %xmm1              #  4     0xe   5      OPC=movsd_xmm_xmm          
  retq                             #  5     0x13  1      OPC=retq                   
                                                                                    
.size target, .-target
