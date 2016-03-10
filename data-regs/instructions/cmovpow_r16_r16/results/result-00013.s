  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  movq $0xfffffffffffffffb, %r12  #  1     0     10     OPC=movq_r64_imm64   
  cmovnpw %cx, %bx                #  2     0xa   4      OPC=cmovnpw_r16_r16  
  popcntq %r12, %rax              #  3     0xe   5      OPC=popcntq_r64_r64  
  cmovow %cx, %bx                 #  4     0x13  4      OPC=cmovow_r16_r16   
  retq                            #  5     0x17  1      OPC=retq             
                                                                             
.size target, .-target
