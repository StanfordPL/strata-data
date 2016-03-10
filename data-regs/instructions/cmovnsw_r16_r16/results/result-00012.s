  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP   Bytes  Opcode               
.target:                #        0     0      OPC=<label>          
  movq $0x40, %r13      #  1     0     10     OPC=movq_r64_imm64   
  sets %r13b            #  2     0xa   4      OPC=sets_r8          
  popcntw %r13w, %r15w  #  3     0xe   6      OPC=popcntw_r16_r16  
  cmovzw %cx, %bx       #  4     0x14  4      OPC=cmovzw_r16_r16   
  retq                  #  5     0x18  1      OPC=retq             
                                                                   
.size target, .-target
