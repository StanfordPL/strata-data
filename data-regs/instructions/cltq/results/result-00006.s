  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movslq %eax, %rbx                 #  1     0     3      OPC=movslq_r64_r32  
  callq .move_byte_7_of_rbx_to_r9b  #  2     0x3   5      OPC=callq_label     
  callq .move_r9b_to_byte_4_of_rbx  #  3     0x8   5      OPC=callq_label     
  movq %rbx, %rax                   #  4     0xd   3      OPC=movq_r64_r64    
  retq                              #  5     0x10  1      OPC=retq            
                                                                              
.size target, .-target
