  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_016_008_bx_r10b_r11b  #  1     0     5      OPC=callq_label     
  movswq %cx, %r8                   #  2     0x5   4      OPC=movswq_r64_r16  
  callq .move_008_016_r10b_r11b_dx  #  3     0x9   5      OPC=callq_label     
  movswq %dx, %rbx                  #  4     0xe   4      OPC=movswq_r64_r16  
  movswq %dx, %rax                  #  5     0x12  4      OPC=movswq_r64_r16  
  xorq %r8, %rbx                    #  6     0x16  3      OPC=xorq_r64_r64    
  xorq %rax, %r8                    #  7     0x19  3      OPC=xorq_r64_r64    
  retq                              #  8     0x1c  1      OPC=retq            
                                                                              
.size target, .-target
