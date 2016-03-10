  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode           
.target:                              #        0     0      OPC=<label>      
  callq .move_128_064_xmm2_r12_r13    #  1     0     5      OPC=callq_label  
  vzeroall                            #  2     0x5   3      OPC=vzeroall     
  callq .move_064_128_r12_r13_xmm3    #  3     0x8   5      OPC=callq_label  
  callq .move_128_256_xmm8_xmm9_ymm1  #  4     0xd   5      OPC=callq_label  
  callq .move_128_064_xmm3_r10_r11    #  5     0x12  5      OPC=callq_label  
  callq .move_064_128_r10_r11_xmm1    #  6     0x17  5      OPC=callq_label  
  retq                                #  7     0x1c  1      OPC=retq         
                                                                             
.size target, .-target
