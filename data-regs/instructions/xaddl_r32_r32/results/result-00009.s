  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorq %rax, %rax   #  1     0    3      OPC=xorq_r64_r64   
  adcw %bx, %ax     #  2     0x3  3      OPC=adcw_r16_r16   
  xchgl %ebx, %ecx  #  3     0x6  2      OPC=xchgl_r32_r32  
  adcl %ecx, %ebx   #  4     0x8  2      OPC=adcl_r32_r32   
  retq              #  5     0xa  1      OPC=retq           
                                                            
.size target, .-target
