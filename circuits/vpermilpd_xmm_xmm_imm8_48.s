  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label      
  sall $0x1, %r11d                  #  2     0x5   3      OPC=sall_r32_one     
  vzeroall                          #  3     0x8   3      OPC=vzeroall         
  callq .move_064_128_r10_r11_xmm1  #  4     0xb   5      OPC=callq_label      
  movlhps %xmm1, %xmm1              #  5     0x10  3      OPC=movlhps_xmm_xmm  
  retq                              #  6     0x13  1      OPC=retq             
                                                                               
.size target, .-target
