  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0xfffffffffffffffa, %rbx    #  1     0     10     OPC=movq_r64_imm64  
  xaddb %bl, %ah                    #  2     0xa   3      OPC=xaddb_rh_r8     
  callq .move_016_008_bx_r12b_r13b  #  3     0xd   5      OPC=callq_label     
  movsbq %r12b, %rcx                #  4     0x12  4      OPC=movsbq_r64_r8   
  movl %ecx, %esi                   #  5     0x16  2      OPC=movl_r32_r32    
  movsbl %sil, %ebx                 #  6     0x18  4      OPC=movsbl_r32_r8   
  retq                              #  7     0x1c  1      OPC=retq            
                                                                              
.size target, .-target
