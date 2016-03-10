  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label     
  salq $0x1, %rbx          #  2     0x5   3      OPC=salq_r64_one    
  callq .read_zf_into_rcx  #  3     0x8   5      OPC=callq_label     
  movq $0x40, %rbx         #  4     0xd   10     OPC=movq_r64_imm64  
  xchgl %ebx, %ecx         #  5     0x17  2      OPC=xchgl_r32_r32   
  retq                     #  6     0x19  1      OPC=retq            
                                                                     
.size target, .-target
