  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x20, %rbx                  #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_3_of_rbx_to_r8b  #  2     0xa   5      OPC=callq_label     
  callq .move_r8b_to_byte_5_of_rbx  #  3     0xf   5      OPC=callq_label     
  incw %bx                          #  4     0x14  3      OPC=incw_r16        
  xaddb %bl, %cl                    #  5     0x17  3      OPC=xaddb_r8_r8     
  retq                              #  6     0x1a  1      OPC=retq            
                                                                              
.size target, .-target
