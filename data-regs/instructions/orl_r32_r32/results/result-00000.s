  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  xchgl %ecx, %ebx         #  1     0    2      OPC=xchgl_r32_r32  
  orq %rbx, %rcx           #  2     0x2  3      OPC=orq_r64_r64    
  callq .read_cf_into_rbx  #  3     0x5  5      OPC=callq_label    
  xaddl %ebx, %ecx         #  4     0xa  3      OPC=xaddl_r32_r32  
  retq                     #  5     0xd  1      OPC=retq           
                                                                   
.size target, .-target
