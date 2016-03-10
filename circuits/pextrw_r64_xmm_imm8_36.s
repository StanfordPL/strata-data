  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  movq $0x4, %rbx                   #  1     0     10     OPC=movq_r64_imm64   
  callq .move_128_064_xmm1_r10_r11  #  2     0xa   5      OPC=callq_label      
  popcntq %r10, %rdi                #  3     0xf   5      OPC=popcntq_r64_r64  
  cmovaew %r11w, %bx                #  4     0x14  5      OPC=cmovaew_r16_r16  
  retq                              #  5     0x19  1      OPC=retq             
                                                                               
.size target, .-target
