  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode              
.target:                                #        0     0      OPC=<label>         
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label     
  movups %xmm11, %xmm3                  #  2     0x5   4      OPC=movups_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11      #  3     0x9   5      OPC=callq_label     
  vzeroall                              #  4     0xe   3      OPC=vzeroall        
  callq .move_064_128_r10_r11_xmm1      #  5     0x11  5      OPC=callq_label     
  retq                                  #  6     0x16  1      OPC=retq            
                                                                                  
.size target, .-target
