  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorq %rax, %rax   #  1     0    3      OPC=xorq_r64_r64   
  notq %rax         #  2     0x3  3      OPC=notq_r64       
  xchgl %eax, %ebx  #  3     0x6  1      OPC=xchgl_r32_eax  
  xaddl %ebx, %eax  #  4     0x7  3      OPC=xaddl_r32_r32  
  xchgl %eax, %ebx  #  5     0xa  2      OPC=xchgl_r32_r32  
  retq              #  6     0xc  1      OPC=retq           
                                                            
.size target, .-target
