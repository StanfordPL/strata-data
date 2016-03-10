  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovd %ebx, %xmm1               #  1     0     4      OPC=vmovd_xmm_r32          
  vbroadcastss %xmm1, %ymm0       #  2     0x4   5      OPC=vbroadcastss_ymm_xmm   
  vmaxsd %xmm2, %xmm2, %xmm11     #  3     0x9   4      OPC=vmaxsd_xmm_xmm_xmm     
  vunpckhps %ymm0, %ymm11, %ymm3  #  4     0xd   4      OPC=vunpckhps_ymm_ymm_ymm  
  vunpckhps %ymm11, %ymm3, %ymm9  #  5     0x11  5      OPC=vunpckhps_ymm_ymm_ymm  
  vmovsd %xmm2, %xmm9, %xmm1      #  6     0x16  4      OPC=vmovsd_xmm_xmm_xmm     
  retq                            #  7     0x1a  1      OPC=retq                   
                                                                                   
.size target, .-target
