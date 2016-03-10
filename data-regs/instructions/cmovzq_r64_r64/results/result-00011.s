  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq %rcx, %r12                   #  1     0     3      OPC=movq_r64_r64    
  cmoveq %r12, %rbx                 #  2     0x3   4      OPC=cmoveq_r64_r64  
  callq .move_byte_3_of_rbx_to_r9b  #  3     0x7   5      OPC=callq_label     
  callq .move_r9b_to_byte_3_of_rbx  #  4     0xc   5      OPC=callq_label     
  retq                              #  5     0x11  1      OPC=retq            
                                                                              
.size target, .-target
