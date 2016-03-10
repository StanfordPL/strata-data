  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode               
.target:            #        0     0      OPC=<label>          
  xorl %eax, %eax   #  1     0     2      OPC=xorl_r32_r32     
  cmovnbw %ax, %ax  #  2     0x2   4      OPC=cmovnbw_r16_r16  
  xchgl %eax, %ebx  #  3     0x6   1      OPC=xchgl_r32_eax    
  notl %eax         #  4     0x7   2      OPC=notl_r32         
  setnb %bl         #  5     0x9   3      OPC=setnb_r8         
  xchgq %rbx, %rax  #  6     0xc   2      OPC=xchgq_rax_r64    
  addl %eax, %ebx   #  7     0xe   2      OPC=addl_r32_r32     
  cmc               #  8     0x10  1      OPC=cmc              
  retq              #  9     0x11  1      OPC=retq             
                                                               
.size target, .-target
