  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_016_008_cx_r12b_r13b  #  1     0     5      OPC=callq_label     
  movq $0x6, %rbx                   #  2     0x5   10     OPC=movq_r64_imm64  
  callq .move_008_016_r12b_r13b_bx  #  3     0xf   5      OPC=callq_label     
  retq                              #  4     0x14  1      OPC=retq            
                                                                              
.size target, .-target
