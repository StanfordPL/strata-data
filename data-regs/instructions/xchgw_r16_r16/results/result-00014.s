  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x10, %r9                   #  1     0     10     OPC=movq_r64_imm64  
  movzwl %bx, %r8d                  #  2     0xa   4      OPC=movzwl_r32_r16  
  callq .move_016_008_cx_r12b_r13b  #  3     0xe   5      OPC=callq_label     
  callq .move_008_016_r12b_r13b_bx  #  4     0x13  5      OPC=callq_label     
  callq .move_016_032_r8w_r9w_ecx   #  5     0x18  5      OPC=callq_label     
  retq                              #  6     0x1d  1      OPC=retq            
                                                                              
.size target, .-target
