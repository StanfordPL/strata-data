  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_032_016_ecx_r8w_r9w    #  1     0     5      OPC=callq_label     
  callq .move_032_016_ebx_r12w_r13w  #  2     0x5   5      OPC=callq_label     
  movq $0xffffffffffffffc0, %rbx     #  3     0xa   10     OPC=movq_r64_imm64  
  movswq %r12w, %rcx                 #  4     0x14  4      OPC=movswq_r64_r16  
  callq .move_016_032_r12w_r13w_ecx  #  5     0x18  5      OPC=callq_label     
  callq .move_016_032_r8w_r9w_ebx    #  6     0x1d  5      OPC=callq_label     
  retq                               #  7     0x22  1      OPC=retq            
                                                                               
.size target, .-target
