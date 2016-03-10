  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movslq %eax, %rcx                 #  1     0     3      OPC=movslq_r64_r32  
  callq .move_016_008_cx_r12b_r13b  #  2     0x3   5      OPC=callq_label     
  movswq %cx, %r12                  #  3     0x8   4      OPC=movswq_r64_r16  
  callq .move_008_016_r12b_r13b_cx  #  4     0xc   5      OPC=callq_label     
  movq %rcx, %rax                   #  5     0x11  3      OPC=movq_r64_r64    
  retq                              #  6     0x14  1      OPC=retq            
                                                                              
.size target, .-target
