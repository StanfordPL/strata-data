  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode            
.target:                          #        0     0      OPC=<label>       
  xorl %edx, %edx                 #  1     0     2      OPC=xorl_r32_r32  
  callq .move_128_064_xmm1_r8_r9  #  2     0x2   5      OPC=callq_label   
  callq .read_of_into_rbx         #  3     0x7   5      OPC=callq_label   
  xorw %r8w, %bx                  #  4     0xc   4      OPC=xorw_r16_r16  
  retq                            #  5     0x10  1      OPC=retq          
                                                                          
.size target, .-target
