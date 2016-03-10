  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  movsbl %bl, %edi         #  1     0     3      OPC=movsbl_r32_r8    
  popcntw %di, %bx         #  2     0x3   5      OPC=popcntw_r16_r16  
  callq .read_cf_into_rbx  #  3     0x8   5      OPC=callq_label      
  notq %rdi                #  4     0xd   3      OPC=notq_r64         
  xchgl %ebx, %edi         #  5     0x10  2      OPC=xchgl_r32_r32    
  retq                     #  6     0x12  1      OPC=retq             
                                                                      
.size target, .-target
