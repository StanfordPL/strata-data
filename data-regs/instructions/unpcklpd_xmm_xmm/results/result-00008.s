  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP  Bytes  Opcode            
.target:                            #        0    0      OPC=<label>       
  callq .move_128_064_xmm1_r10_r11  #  1     0    5      OPC=callq_label   
  movq %xmm2, %r11                  #  2     0x5  5      OPC=movq_r64_xmm  
  callq .move_064_128_r10_r11_xmm1  #  3     0xa  5      OPC=callq_label   
  retq                              #  4     0xf  1      OPC=retq          
                                                                           
.size target, .-target
