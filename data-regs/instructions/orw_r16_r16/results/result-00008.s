  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movswq %cx, %r8     #  1     0    4      OPC=movswq_r64_r16   
  movswl %bx, %edx    #  2     0x4  3      OPC=movswl_r32_r16   
  orl %r8d, %edx      #  3     0x7  3      OPC=orl_r32_r32      
  cmovnel %edx, %ebx  #  4     0xa  3      OPC=cmovnel_r32_r32  
  retq                #  5     0xd  1      OPC=retq             
                                                                
.size target, .-target
