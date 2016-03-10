  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  movd %ebx, %xmm9                   #  1     0     5      OPC=movd_xmm_r32          
  vpbroadcastd %xmm9, %ymm13         #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm  
  vmovhlps %xmm13, %xmm13, %xmm11    #  3     0xa   5      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_128_64_xmm1_xmm8_xmm9  #  4     0xf   5      OPC=callq_label           
  unpcklps %xmm11, %xmm9             #  5     0x14  4      OPC=unpcklps_xmm_xmm      
  unpcklpd %xmm9, %xmm1              #  6     0x18  5      OPC=unpcklpd_xmm_xmm      
  retq                               #  7     0x1d  1      OPC=retq                  
                                                                                     
.size target, .-target
