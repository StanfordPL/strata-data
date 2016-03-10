  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode               
.target:                            #        0    0      OPC=<label>          
  callq .move_128_064_xmm1_r10_r11  #  1     0    5      OPC=callq_label      
  popcntl %r11d, %ebx               #  2     0x5  5      OPC=popcntl_r32_r32  
  cmovnew %r11w, %bx                #  3     0xa  5      OPC=cmovnew_r16_r16  
  retq                              #  4     0xf  1      OPC=retq             
                                                                              
.size target, .-target
