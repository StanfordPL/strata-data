  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  movd %ebx, %xmm6               #  1     0     4      OPC=movd_xmm_r32           
  vmovupd %xmm2, %xmm9           #  2     0x4   4      OPC=vmovupd_xmm_xmm        
  vpbroadcastq %xmm2, %ymm2      #  3     0x8   5      OPC=vpbroadcastq_ymm_xmm   
  vunpcklps %xmm6, %xmm2, %xmm3  #  4     0xd   4      OPC=vunpcklps_xmm_xmm_xmm  
  vmovdqa %ymm9, %ymm12          #  5     0x11  5      OPC=vmovdqa_ymm_ymm        
  vmovsd %xmm3, %xmm12, %xmm1    #  6     0x16  4      OPC=vmovsd_xmm_xmm_xmm     
  retq                           #  7     0x1a  1      OPC=retq                   
                                                                                  
.size target, .-target
