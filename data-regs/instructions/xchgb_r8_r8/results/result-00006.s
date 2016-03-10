  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  movsbq %bl, %r10   #  1     0    4      OPC=movsbq_r64_r8  
  movsbl %cl, %ebx   #  2     0x4  3      OPC=movsbl_r32_r8  
  movzbw %r10b, %cx  #  3     0x7  5      OPC=movzbw_r16_r8  
  retq               #  4     0xc  1      OPC=retq           
                                                             
.size target, .-target
