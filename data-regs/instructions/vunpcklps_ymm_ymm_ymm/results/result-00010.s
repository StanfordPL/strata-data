  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmovddup %ymm3, %ymm0          #  1     0     4      OPC=vmovddup_ymm_ymm       
  vmovddup %ymm2, %ymm1          #  2     0x4   4      OPC=vmovddup_ymm_ymm       
  vunpckhps %ymm0, %ymm1, %ymm8  #  3     0x8   4      OPC=vunpckhps_ymm_ymm_ymm  
  vpxor %xmm8, %xmm1, %xmm6      #  4     0xc   5      OPC=vpxor_xmm_xmm_xmm      
  vpbroadcastb %xmm6, %xmm3      #  5     0x11  5      OPC=vpbroadcastb_xmm_xmm   
  vpor %ymm3, %ymm8, %ymm1       #  6     0x16  4      OPC=vpor_ymm_ymm_ymm       
  retq                           #  7     0x1a  1      OPC=retq                   
                                                                                  
.size target, .-target
