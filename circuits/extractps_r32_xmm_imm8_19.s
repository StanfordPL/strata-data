  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode            
.target:                                        #        0     0      OPC=<label>       
  callq .move_128_064_xmm1_r10_r11              #  1     0     5      OPC=callq_label   
  callq .move_064_128_r10_r11_xmm2              #  2     0x5   5      OPC=callq_label   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label   
  movq %xmm7, %rbx                              #  4     0xf   5      OPC=movq_r64_xmm  
  retq                                          #  5     0x14  1      OPC=retq          
                                                                                        
.size target, .-target
