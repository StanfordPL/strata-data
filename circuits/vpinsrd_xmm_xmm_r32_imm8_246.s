  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label   
  xorl %r11d, %ebx                  #  2     0x5   3      OPC=xorl_r32_r32  
  vzeroall                          #  3     0x8   3      OPC=vzeroall      
  xorq %rbx, %r11                   #  4     0xb   3      OPC=xorq_r64_r64  
  callq .move_064_128_r10_r11_xmm1  #  5     0xe   5      OPC=callq_label   
  retq                              #  6     0x13  1      OPC=retq          
                                                                            
.size target, .-target
