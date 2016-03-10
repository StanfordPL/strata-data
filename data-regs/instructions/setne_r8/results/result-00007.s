  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  movq $0x80, %r8                   #  1     0     10     OPC=movq_r64_imm64   
  sete %r8b                         #  2     0xa   4      OPC=sete_r8          
  popcntq %r8, %rbx                 #  3     0xe   5      OPC=popcntq_r64_r64  
  callq .read_zf_into_rbx           #  4     0x13  5      OPC=callq_label      
  callq .move_r8b_to_byte_6_of_rbx  #  5     0x18  5      OPC=callq_label      
  callq .move_r8b_to_byte_3_of_rbx  #  6     0x1d  5      OPC=callq_label      
  retq                              #  7     0x22  1      OPC=retq             
                                                                               
.size target, .-target
