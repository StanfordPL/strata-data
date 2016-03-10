  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x1, %rax          #  1     0     10     OPC=movq_r64_imm64  
  cltq                     #  2     0xa   2      OPC=cltq            
  callq .read_zf_into_rbx  #  3     0xc   5      OPC=callq_label     
  xchgl %eax, %ebx         #  4     0x11  2      OPC=xchgl_r32_r32   
  decb %al                 #  5     0x13  2      OPC=decb_r8         
  shll $0x1, %eax          #  6     0x15  2      OPC=shll_r32_one    
  retq                     #  7     0x17  1      OPC=retq            
                                                                     
.size target, .-target
