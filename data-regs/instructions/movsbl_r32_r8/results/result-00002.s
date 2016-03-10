  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movsbq %cl, %rbx                 #  1     0     4      OPC=movsbq_r64_r8   
  callq .move_032_016_ebx_r8w_r9w  #  2     0x4   5      OPC=callq_label     
  movsbq %cl, %r8                  #  3     0x9   4      OPC=movsbq_r64_r8   
  movq $0xfffffffffffffffa, %rbx   #  4     0xd   10     OPC=movq_r64_imm64  
  callq .move_016_032_r8w_r9w_ebx  #  5     0x17  5      OPC=callq_label     
  retq                             #  6     0x1c  1      OPC=retq            
                                                                             
.size target, .-target
