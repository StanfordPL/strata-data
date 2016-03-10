  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  movl %ecx, %ecx          #  1     0     2      OPC=movl_r32_r32     
  popcntq %rcx, %r11       #  2     0x2   5      OPC=popcntq_r64_r64  
  callq .read_cf_into_rbx  #  3     0x7   5      OPC=callq_label      
  xchgw %bx, %r11w         #  4     0xc   4      OPC=xchgw_r16_r16    
  retq                     #  5     0x10  1      OPC=retq             
                                                                      
.size target, .-target
