  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movswq %cx, %r8                   #  1     0     4      OPC=movswq_r64_r16  
  callq .move_016_008_bx_r12b_r13b  #  2     0x4   5      OPC=callq_label     
  callq .move_008_016_r12b_r13b_cx  #  3     0x9   5      OPC=callq_label     
  movswq %r8w, %rbx                 #  4     0xe   4      OPC=movswq_r64_r16  
  retq                              #  5     0x12  1      OPC=retq            
                                                                              
.size target, .-target
