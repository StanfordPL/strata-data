  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode                
.target:                   #        0     0      OPC=<label>           
  movl %ecx, %r14d         #  1     0     3      OPC=movl_r32_r32      
  callq .read_sf_into_rcx  #  2     0x3   5      OPC=callq_label       
  popcntw %cx, %r15w       #  3     0x8   6      OPC=popcntw_r16_r16   
  cmovnbel %r14d, %ebx     #  4     0xe   4      OPC=cmovnbel_r32_r32  
  retq                     #  5     0x12  1      OPC=retq              
                                                                       
.size target, .-target
