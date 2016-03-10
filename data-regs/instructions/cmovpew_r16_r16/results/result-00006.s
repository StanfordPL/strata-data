  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movswq %cx, %r14    #  1     0    4      OPC=movswq_r64_r16   
  movslq %r14d, %rax  #  2     0x4  3      OPC=movslq_r64_r32   
  cmovpel %eax, %ebx  #  3     0x7  3      OPC=cmovpel_r32_r32  
  retq                #  4     0xa  1      OPC=retq             
                                                                
.size target, .-target
