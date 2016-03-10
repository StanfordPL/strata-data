  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmoveq %rbx, %rcx   #  1     0    4      OPC=cmoveq_r64_r64   
  popcntq %rbx, %rdi  #  2     0x4  5      OPC=popcntq_r64_r64  
  setz %bl            #  3     0x9  3      OPC=setz_r8          
  xchgl %ebx, %ecx    #  4     0xc  2      OPC=xchgl_r32_r32    
  retq                #  5     0xe  1      OPC=retq             
                                                                
.size target, .-target
