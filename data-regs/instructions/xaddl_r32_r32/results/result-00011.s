  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movsbq %cl, %rdx  #  1     0    4      OPC=movsbq_r64_r8   
  movslq %ebx, %r8  #  2     0x4  3      OPC=movslq_r64_r32  
  xorq %r8, %rdx    #  3     0x7  3      OPC=xorq_r64_r64    
  adcl %r8d, %ecx   #  4     0xa  3      OPC=adcl_r32_r32    
  xchgl %ebx, %ecx  #  5     0xd  2      OPC=xchgl_r32_r32   
  retq              #  6     0xf  1      OPC=retq            
                                                             
.size target, .-target
