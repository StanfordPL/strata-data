  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movslq %ecx, %r15   #  1     0    3      OPC=movslq_r64_r32  
  cmovol %ebx, %r15d  #  2     0x3  4      OPC=cmovol_r32_r32  
  xchgl %ebx, %r15d   #  3     0x7  3      OPC=xchgl_r32_r32   
  retq                #  4     0xa  1      OPC=retq            
                                                               
.size target, .-target
