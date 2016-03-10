  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x3, %rbx                    #  1     0     10     OPC=movq_r64_imm64  
  callq .move_032_016_ebx_r12w_r13w  #  2     0xa   5      OPC=callq_label     
  callq .move_016_032_r12w_r13w_ecx  #  3     0xf   5      OPC=callq_label     
  callq .move_032_016_ecx_r8w_r9w    #  4     0x14  5      OPC=callq_label     
  callq .read_zf_into_rbx            #  5     0x19  5      OPC=callq_label     
  callq .move_r8b_to_byte_4_of_rbx   #  6     0x1e  5      OPC=callq_label     
  retq                               #  7     0x23  1      OPC=retq            
                                                                               
.size target, .-target
