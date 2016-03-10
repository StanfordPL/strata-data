  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movslq %ecx, %rax   #  1     0    3      OPC=movslq_r64_r32   
  xchgl %eax, %ebx    #  2     0x3  1      OPC=xchgl_r32_eax    
  cmovnpl %eax, %ebx  #  3     0x4  3      OPC=cmovnpl_r32_r32  
  retq                #  4     0x7  1      OPC=retq             
                                                                
.size target, .-target
