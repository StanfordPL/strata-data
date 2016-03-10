  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vpandn %xmm1, %xmm1, %xmm6       #  1     0     4      OPC=vpandn_xmm_xmm_xmm     
  vminps %ymm6, %ymm6, %ymm12      #  2     0x4   4      OPC=vminps_ymm_ymm_ymm     
  vmovddup %xmm6, %xmm13           #  3     0x8   4      OPC=vmovddup_xmm_xmm       
  unpcklps %xmm1, %xmm12           #  4     0xc   4      OPC=unpcklps_xmm_xmm       
  vunpcklpd %ymm12, %ymm13, %ymm9  #  5     0x10  5      OPC=vunpcklpd_ymm_ymm_ymm  
  movapd %xmm9, %xmm1              #  6     0x15  5      OPC=movapd_xmm_xmm         
  retq                             #  7     0x1a  1      OPC=retq                   
                                                                                    
.size target, .-target
