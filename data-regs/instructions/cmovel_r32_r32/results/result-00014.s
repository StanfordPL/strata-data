  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP   Bytes  Opcode               
.target:               #        0     0      OPC=<label>          
  movslq %ebx, %r14    #  1     0     3      OPC=movslq_r64_r32   
  movq $0x20, %rbx     #  2     0x3   10     OPC=movq_r64_imm64   
  cmovnzl %r14d, %ecx  #  3     0xd   4      OPC=cmovnzl_r32_r32  
  xaddl %ebx, %ecx     #  4     0x11  3      OPC=xaddl_r32_r32    
  retq                 #  5     0x14  1      OPC=retq             
                                                                  
.size target, .-target
