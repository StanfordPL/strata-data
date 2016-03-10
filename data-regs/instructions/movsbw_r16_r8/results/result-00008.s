  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x4, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  shlw $0x1, %bx                    #  2     0xa   3      OPC=shlw_r16_one    
  setnge %dh                        #  3     0xd   3      OPC=setnge_rh       
  callq .move_064_032_rbx_r8d_r9d   #  4     0x10  5      OPC=callq_label     
  xaddb %dh, %cl                    #  5     0x15  3      OPC=xaddb_r8_rh     
  movsbl %dh, %ebx                  #  6     0x18  3      OPC=movsbl_r32_rh   
  decl %r9d                         #  7     0x1b  3      OPC=decl_r32        
  callq .move_r9b_to_byte_6_of_rbx  #  8     0x1e  5      OPC=callq_label     
  retq                              #  9     0x23  1      OPC=retq            
                                                                              
.size target, .-target
