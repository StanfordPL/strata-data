  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vmovhlps %xmm3, %xmm2, %xmm1         #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm     
  vunpcklps %xmm3, %xmm1, %xmm5        #  2     0x4   4      OPC=vunpcklps_xmm_xmm_xmm    
  callq .move_128_64_xmm2_xmm10_xmm11  #  3     0x8   5      OPC=callq_label              
  vmovss %xmm11, %xmm2, %xmm8          #  4     0xd   5      OPC=vmovss_xmm_xmm_xmm       
  vmovups %ymm5, %ymm6                 #  5     0x12  4      OPC=vmovups_ymm_ymm          
  vmovss %xmm8, %xmm2, %xmm2           #  6     0x16  5      OPC=vmovss_xmm_xmm_xmm       
  vpunpcklqdq %ymm6, %ymm2, %ymm1      #  7     0x1b  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                 #  8     0x1f  1      OPC=retq                     
                                                                                          
.size target, .-target
