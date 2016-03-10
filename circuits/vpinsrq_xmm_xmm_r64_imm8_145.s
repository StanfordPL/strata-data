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
  movq %rbx, %xmm10                 #  3     0x8   5      OPC=movq_xmm_r64     
  callq .move_064_128_r10_r11_xmm1  #  4     0xd   5      OPC=callq_label      
  movlhps %xmm10, %xmm1             #  5     0x12  4      OPC=movlhps_xmm_xmm  
  retq                              #  6     0x16  1      OPC=retq             
                                                                               
.size target, .-target
