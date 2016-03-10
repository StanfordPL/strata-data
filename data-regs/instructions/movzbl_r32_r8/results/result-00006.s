  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x10, %rbx                  #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_4_of_rbx_to_r9b  #  2     0xa   5      OPC=callq_label     
  movsbq %cl, %r8                   #  3     0xf   4      OPC=movsbq_r64_r8   
  shll $0x1, %ebx                   #  4     0x13  2      OPC=shll_r32_one    
  callq .move_008_016_r8b_r9b_bx    #  5     0x15  5      OPC=callq_label     
  retq                              #  6     0x1a  1      OPC=retq            
                                                                              
.size target, .-target
