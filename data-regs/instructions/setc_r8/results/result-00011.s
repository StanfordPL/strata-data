  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0xfffffffffffffffa, %rbx    #  1     0     10     OPC=movq_r64_imm64  
  setb %bpl                         #  2     0xa   4      OPC=setb_r8         
  movswq %bx, %rdi                  #  3     0xe   4      OPC=movswq_r64_r16  
  callq .move_byte_6_of_rbx_to_r9b  #  4     0x12  5      OPC=callq_label     
  callq .move_r9b_to_byte_6_of_rbx  #  5     0x17  5      OPC=callq_label     
  xaddb %bpl, %dil                  #  6     0x1c  4      OPC=xaddb_r8_r8     
  addq %rbx, %rdi                   #  7     0x20  3      OPC=addq_r64_r64    
  callq .read_pf_into_rbx           #  8     0x23  5      OPC=callq_label     
  retq                              #  9     0x28  1      OPC=retq            
                                                                              
.size target, .-target
