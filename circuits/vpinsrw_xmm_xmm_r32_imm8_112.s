  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .move_128_064_xmm2_r8_r9    #  1     0     5      OPC=callq_label   
  vzeroall                          #  2     0x5   3      OPC=vzeroall      
  decb %r8b                         #  3     0x8   3      OPC=decb_r8       
  callq .move_r8b_to_byte_2_of_rbx  #  4     0xb   5      OPC=callq_label   
  movw %bx, %r8w                    #  5     0x10  4      OPC=movw_r16_r16  
  callq .move_064_128_r8_r9_xmm1    #  6     0x14  5      OPC=callq_label   
  retq                              #  7     0x19  1      OPC=retq          
                                                                            
.size target, .-target
