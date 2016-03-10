  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  movd %ebx, %xmm8                   #  1     0     5      OPC=movd_xmm_r32           
  vpbroadcastq %xmm2, %ymm9          #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm   
  vmovdqu %ymm9, %ymm11              #  3     0xa   5      OPC=vmovdqu_ymm_ymm        
  vbroadcastss %xmm8, %xmm1          #  4     0xf   5      OPC=vbroadcastss_xmm_xmm   
  callq .move_128_64_xmm2_xmm8_xmm9  #  5     0x14  5      OPC=callq_label            
  vunpcklps %ymm9, %ymm1, %ymm5      #  6     0x19  5      OPC=vunpcklps_ymm_ymm_ymm  
  vmovhlps %xmm11, %xmm5, %xmm1      #  7     0x1e  5      OPC=vmovhlps_xmm_xmm_xmm   
  retq                               #  8     0x23  1      OPC=retq                   
                                                                                      
.size target, .-target
