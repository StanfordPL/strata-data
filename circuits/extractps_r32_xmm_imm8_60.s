  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_128_064_xmm1_r10_r11  #  1     0     5      OPC=callq_label      
  movq $0xfffffffffffffff0, %rbx    #  2     0x5   10     OPC=movq_r64_imm64   
  popcntw %bx, %r12w                #  3     0xf   6      OPC=popcntw_r16_r16  
  cmovael %r10d, %ebx               #  4     0x15  4      OPC=cmovael_r32_r32  
  retq                              #  5     0x19  1      OPC=retq             
                                                                               
.size target, .-target
