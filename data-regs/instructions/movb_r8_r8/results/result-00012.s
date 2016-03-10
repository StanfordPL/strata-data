  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .clear_zf                   #  1     0     5      OPC=callq_label      
  movq $0xfffffffffffffffe, %r9     #  2     0x5   10     OPC=movq_r64_imm64   
  callq .read_zf_into_rbx           #  3     0xf   5      OPC=callq_label      
  popcntq %r9, %r8                  #  4     0x14  5      OPC=popcntq_r64_r64  
  popcntq %r8, %r9                  #  5     0x19  5      OPC=popcntq_r64_r64  
  callq .move_r9b_to_byte_6_of_rbx  #  6     0x1e  5      OPC=callq_label      
  callq .move_r8b_to_byte_7_of_rbx  #  7     0x23  5      OPC=callq_label      
  xaddb %cl, %bl                    #  8     0x28  3      OPC=xaddb_r8_r8      
  retq                              #  9     0x2b  1      OPC=retq             
                                                                               
.size target, .-target
