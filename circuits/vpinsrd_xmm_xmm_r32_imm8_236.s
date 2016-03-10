  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovd %ebx, %xmm1               #  1     0     4      OPC=vmovd_xmm_r32          
  vmulpd %ymm1, %ymm1, %ymm9      #  2     0x4   4      OPC=vmulpd_ymm_ymm_ymm     
  vunpcklpd %xmm9, %xmm1, %xmm10  #  3     0x8   5      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovss %xmm10, %xmm2, %xmm1     #  4     0xd   5      OPC=vmovss_xmm_xmm_xmm     
  retq                            #  5     0x12  1      OPC=retq                   
                                                                                   
.size target, .-target
