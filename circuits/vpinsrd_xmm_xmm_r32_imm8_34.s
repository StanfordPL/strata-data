  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovd %ebx, %xmm8               #  1     0     4      OPC=vmovd_xmm_r32          
  vunpcklps %xmm8, %xmm2, %xmm10  #  2     0x4   5      OPC=vunpcklps_xmm_xmm_xmm  
  vorpd %ymm8, %ymm10, %ymm1      #  3     0x9   5      OPC=vorpd_ymm_ymm_ymm      
  vminpd %xmm2, %xmm2, %xmm0      #  4     0xe   4      OPC=vminpd_xmm_xmm_xmm     
  vunpcklpd %ymm1, %ymm0, %ymm13  #  5     0x12  4      OPC=vunpcklpd_ymm_ymm_ymm  
  vunpckhps %xmm2, %xmm13, %xmm1  #  6     0x16  4      OPC=vunpckhps_xmm_xmm_xmm  
  movsd %xmm2, %xmm1              #  7     0x1a  4      OPC=movsd_xmm_xmm          
  retq                            #  8     0x1e  1      OPC=retq                   
                                                                                   
.size target, .-target
