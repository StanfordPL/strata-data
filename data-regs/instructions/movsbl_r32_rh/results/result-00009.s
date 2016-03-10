  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0xfffffffffffffffc, %rcx    #  1     0     10     OPC=movq_r64_imm64  
  movq $0x7, %rbx                   #  2     0xa   10     OPC=movq_r64_imm64  
  sall $0x1, %ebx                   #  3     0x14  2      OPC=sall_r32_one    
  xaddb %bl, %ah                    #  4     0x16  3      OPC=xaddb_rh_r8     
  callq .move_064_032_rcx_r8d_r9d   #  5     0x19  5      OPC=callq_label     
  callq .move_r9b_to_byte_3_of_rbx  #  6     0x1e  5      OPC=callq_label     
  movsbl %bl, %ebx                  #  7     0x23  3      OPC=movsbl_r32_r8   
  retq                              #  8     0x26  1      OPC=retq            
                                                                              
.size target, .-target
