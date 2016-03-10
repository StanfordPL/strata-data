  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  movq $0x80, %rbx                  #  1     0     10     OPC=movq_r64_imm64   
  callq .move_128_064_xmm1_r12_r13  #  2     0xa   5      OPC=callq_label      
  popcntw %bx, %bx                  #  3     0xf   5      OPC=popcntw_r16_r16  
  cmovneq %r12, %rbx                #  4     0x14  4      OPC=cmovneq_r64_r64  
  retq                              #  5     0x18  1      OPC=retq             
                                                                               
.size target, .-target
