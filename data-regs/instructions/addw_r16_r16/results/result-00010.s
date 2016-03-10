  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .move_016_008_cx_r10b_r11b  #  1     0     5      OPC=callq_label   
  callq .move_008_016_r10b_r11b_cx  #  2     0x5   5      OPC=callq_label   
  xorq %rax, %rax                   #  3     0xa   3      OPC=xorq_r64_r64  
  adcw %cx, %bx                     #  4     0xd   3      OPC=adcw_r16_r16  
  retq                              #  5     0x10  1      OPC=retq          
                                                                            
.size target, .-target
