  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0xfffffffffffffffd, %rdx     #  1     0     10     OPC=movq_r64_imm64  
  movsbl %dl, %r8d                   #  2     0xa   4      OPC=movsbl_r32_r8   
  movslq %r8d, %r13                  #  3     0xe   3      OPC=movslq_r64_r32  
  callq .move_032_016_edx_r12w_r13w  #  4     0x11  5      OPC=callq_label     
  xorq %r13, %rbx                    #  5     0x16  3      OPC=xorq_r64_r64    
  retq                               #  6     0x19  1      OPC=retq            
                                                                               
.size target, .-target
