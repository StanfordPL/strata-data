  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movzbl %ah, %eax                 #  1     0     3      OPC=movzbl_r32_rh   
  movsbl %al, %ebx                 #  2     0x3   3      OPC=movsbl_r32_r8   
  movq $0x20, %r9                  #  3     0x6   10     OPC=movq_r64_imm64  
  callq .move_032_016_ebx_r8w_r9w  #  4     0x10  5      OPC=callq_label     
  movl %r9d, %edx                  #  5     0x15  3      OPC=movl_r32_r32    
  retq                             #  6     0x18  1      OPC=retq            
                                                                             
.size target, .-target
