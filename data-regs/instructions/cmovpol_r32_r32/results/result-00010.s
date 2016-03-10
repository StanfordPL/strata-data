  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movslq %ecx, %r11        #  1     0     3      OPC=movslq_r64_r32  
  callq .read_pf_into_rcx  #  2     0x3   5      OPC=callq_label     
  salb $0x1, %cl           #  3     0x8   2      OPC=salb_r8_one     
  movl %r11d, %r8d         #  4     0xa   3      OPC=movl_r32_r32    
  cmovzl %r8d, %ebx        #  5     0xd   4      OPC=cmovzl_r32_r32  
  retq                     #  6     0x11  1      OPC=retq            
                                                                     
.size target, .-target
