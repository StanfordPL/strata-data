  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode             
.target:            #        0     0      OPC=<label>        
  xorl %eax, %eax   #  1     0     2      OPC=xorl_r32_r32   
  movsbl %bl, %r8d  #  2     0x2   4      OPC=movsbl_r32_r8  
  xchgw %ax, %r8w   #  3     0x6   4      OPC=xchgw_r16_r16  
  movsbq %cl, %r15  #  4     0xa   4      OPC=movsbq_r64_r8  
  xorw %ax, %r15w   #  5     0xe   4      OPC=xorw_r16_r16   
  movb %r15b, %bl   #  6     0x12  3      OPC=movb_r8_r8     
  retq              #  7     0x15  1      OPC=retq           
                                                             
.size target, .-target
