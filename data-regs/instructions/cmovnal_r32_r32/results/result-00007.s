  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  movl %ecx, %edi      #  1     0    2      OPC=movl_r32_r32      
  cmoveq %rdi, %rbx    #  2     0x2  4      OPC=cmoveq_r64_r64    
  cmovnael %ecx, %ebx  #  3     0x6  3      OPC=cmovnael_r32_r32  
  retq                 #  4     0x9  1      OPC=retq              
                                                                  
.size target, .-target
