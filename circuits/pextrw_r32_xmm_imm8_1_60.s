  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_128_064_xmm1_r10_r11  #  1     0     5      OPC=callq_label      
  movzwq %r11w, %rbp                #  2     0x5   4      OPC=movzwq_r64_r16   
  xorw %bx, %bx                     #  3     0x9   3      OPC=xorw_r16_r16     
  callq .read_cf_into_rbx           #  4     0xc   5      OPC=callq_label      
  cmovlew %bp, %bx                  #  5     0x11  4      OPC=cmovlew_r16_r16  
  retq                              #  6     0x15  1      OPC=retq             
                                                                               
.size target, .-target
