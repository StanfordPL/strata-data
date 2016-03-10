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
  rolb $0x1, %r10b                  #  3     0x8   3      OPC=rolb_r8_one      
  callq .move_064_128_r10_r11_xmm1  #  4     0xb   5      OPC=callq_label      
  movhlps %xmm1, %xmm1              #  5     0x10  3      OPC=movhlps_xmm_xmm  
  retq                              #  6     0x13  1      OPC=retq             
                                                                               
.size target, .-target
