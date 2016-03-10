  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbq %bl, %r12  #  1     0    4      OPC=movsbq_r64_r8  
  xorq %rax, %rax   #  2     0x4  3      OPC=xorq_r64_r64   
  adcq %rax, %r12   #  3     0x7  3      OPC=adcq_r64_r64   
  adcl %ebx, %ecx   #  4     0xa  2      OPC=adcl_r32_r32   
  xchgl %ebx, %ecx  #  5     0xc  2      OPC=xchgl_r32_r32  
  retq              #  6     0xe  1      OPC=retq           
                                                            
.size target, .-target
