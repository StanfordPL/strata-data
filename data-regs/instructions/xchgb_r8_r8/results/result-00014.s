  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movzbq %cl, %rbp    #  1     0    4      OPC=movzbq_r64_r8   
  movb %bl, %cl       #  2     0x4  2      OPC=movb_r8_r8      
  movl %ebp, %r12d    #  3     0x6  3      OPC=movl_r32_r32    
  movswl %r12w, %ebx  #  4     0x9  4      OPC=movswl_r32_r16  
  retq                #  5     0xd  1      OPC=retq            
                                                               
.size target, .-target
