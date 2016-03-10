  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovupd %xmm2, %xmm7             #  1     0     4      OPC=vmovupd_xmm_xmm        
  vmovd %ebx, %xmm2                #  2     0x4   4      OPC=vmovd_xmm_r32          
  vpbroadcastd %xmm2, %xmm15       #  3     0x8   5      OPC=vpbroadcastd_xmm_xmm   
  vunpckhps %ymm15, %ymm7, %ymm15  #  4     0xd   5      OPC=vunpckhps_ymm_ymm_ymm  
  vunpcklpd %xmm15, %xmm7, %xmm1   #  5     0x12  5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                             #  6     0x17  1      OPC=retq                   
                                                                                    
.size target, .-target
