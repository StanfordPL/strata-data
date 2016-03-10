  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode               
.target:                   #        0    0      OPC=<label>          
  movl %ecx, %r10d         #  1     0    3      OPC=movl_r32_r32     
  callq .read_of_into_rcx  #  2     0x3  5      OPC=callq_label      
  negw %cx                 #  3     0x8  3      OPC=negw_r16         
  cmovnzl %r10d, %ebx      #  4     0xb  4      OPC=cmovnzl_r32_r32  
  retq                     #  5     0xf  1      OPC=retq             
                                                                     
.size target, .-target
