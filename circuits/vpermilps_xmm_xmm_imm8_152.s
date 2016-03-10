  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label           
  vzeroall                          #  2     0x5   3      OPC=vzeroall              
  callq .move_064_128_r10_r11_xmm1  #  3     0x8   5      OPC=callq_label           
  xaddq %r10, %r11                  #  4     0xd   4      OPC=xaddq_r64_r64         
  callq .move_064_128_r10_r11_xmm3  #  5     0x11  5      OPC=callq_label           
  vbroadcastss %xmm3, %ymm6         #  6     0x16  5      OPC=vbroadcastss_ymm_xmm  
  punpckldq %xmm6, %xmm1            #  7     0x1b  4      OPC=punpckldq_xmm_xmm     
  retq                              #  8     0x1f  1      OPC=retq                  
                                                                                    
.size target, .-target
