  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0xfffffffffffffff0, %rbx    #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_4_of_rbx_to_r9b  #  2     0xa   5      OPC=callq_label     
  callq .move_r9b_to_byte_6_of_rbx  #  3     0xf   5      OPC=callq_label     
  movsbq %cl, %rcx                  #  4     0x14  4      OPC=movsbq_r64_r8   
  callq .move_032_016_ecx_r8w_r9w   #  5     0x18  5      OPC=callq_label     
  callq .move_016_032_r8w_r9w_ebx   #  6     0x1d  5      OPC=callq_label     
  retq                              #  7     0x22  1      OPC=retq            
                                                                              
.size target, .-target
