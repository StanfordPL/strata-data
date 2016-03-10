  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x10, %rbx                  #  1     0     10     OPC=movq_r64_imm64  
  incw %bx                          #  2     0xa   3      OPC=incw_r16        
  callq .move_byte_3_of_rbx_to_r8b  #  3     0xd   5      OPC=callq_label     
  movzwl %cx, %r9d                  #  4     0x12  4      OPC=movzwl_r32_r16  
  xchgw %bx, %r9w                   #  5     0x16  4      OPC=xchgw_r16_r16   
  callq .move_r8b_to_byte_2_of_rbx  #  6     0x1a  5      OPC=callq_label     
  retq                              #  7     0x1f  1      OPC=retq            
                                                                              
.size target, .-target
