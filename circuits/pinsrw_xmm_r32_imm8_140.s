  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_128_064_xmm1_r10_r11  #  1     0     5      OPC=callq_label    
  shlw $0x1, %r11w                  #  2     0x5   4      OPC=shlw_r16_one   
  xchgw %r11w, %bx                  #  3     0x9   4      OPC=xchgw_r16_r16  
  callq .move_064_128_r10_r11_xmm1  #  4     0xd   5      OPC=callq_label    
  retq                              #  5     0x12  1      OPC=retq           
                                                                             
.size target, .-target
