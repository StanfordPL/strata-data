  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r10_r11     #  1     0     5      OPC=callq_label              
  vzeroall                             #  2     0x5   3      OPC=vzeroall                 
  callq .move_064_128_r10_r11_xmm2     #  3     0x8   5      OPC=callq_label              
  vpunpckhqdq %ymm14, %ymm2, %ymm3     #  4     0xd   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_128_64_xmm3_xmm10_xmm11  #  5     0x12  5      OPC=callq_label              
  vunpcklpd %ymm2, %ymm10, %ymm1       #  6     0x17  4      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                                 #  7     0x1b  1      OPC=retq                     
                                                                                          
.size target, .-target
