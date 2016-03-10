  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x80, %r9                   #  1     0     10     OPC=movq_r64_imm64  
  callq .read_sf_into_rbx           #  2     0xa   5      OPC=callq_label     
  callq .move_r9b_to_byte_7_of_rbx  #  3     0xf   5      OPC=callq_label     
  xaddb %bh, %bl                    #  4     0x14  3      OPC=xaddb_r8_rh     
  movswq %bx, %rax                  #  5     0x17  4      OPC=movswq_r64_r16  
  retq                              #  6     0x1b  1      OPC=retq            
                                                                              
.size target, .-target
