  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_byte_7_of_rbx_to_r8b  #  1     0     5      OPC=callq_label      
  xorq %rax, %rax                   #  2     0x5   3      OPC=xorq_r64_r64     
  setz %cl                          #  3     0x8   3      OPC=setz_r8          
  popcntq %rax, %rsi                #  4     0xb   5      OPC=popcntq_r64_r64  
  shlq %cl, %rbx                    #  5     0x10  3      OPC=shlq_r64_cl      
  rolb $0x1, %r8b                   #  6     0x13  3      OPC=rolb_r8_one      
  retq                              #  7     0x16  1      OPC=retq             
                                                                               
.size target, .-target
