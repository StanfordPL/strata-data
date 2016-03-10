  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x4, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_3_of_rbx_to_r8b  #  2     0xa   5      OPC=callq_label     
  movzbq %cl, %rbx                  #  3     0xf   4      OPC=movzbq_r64_r8   
  xchgw %bx, %bx                    #  4     0x13  3      OPC=xchgw_r16_r16   
  callq .move_r8b_to_byte_3_of_rbx  #  5     0x16  5      OPC=callq_label     
  retq                              #  6     0x1b  1      OPC=retq            
                                                                              
.size target, .-target
