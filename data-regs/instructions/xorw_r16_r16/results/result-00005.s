  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movswq %bx, %r12                  #  1     0     4      OPC=movswq_r64_r16  
  movswq %cx, %rdi                  #  2     0x4   4      OPC=movswq_r64_r16  
  callq .move_016_008_bx_r12b_r13b  #  3     0x8   5      OPC=callq_label     
  xorq %r12, %rdi                   #  4     0xd   3      OPC=xorq_r64_r64    
  movswq %di, %rbx                  #  5     0x10  4      OPC=movswq_r64_r16  
  retq                              #  6     0x14  1      OPC=retq            
                                                                              
.size target, .-target
