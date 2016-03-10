  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode               
.target:               #        0    0      OPC=<label>          
  movswq %cx, %r10     #  1     0    4      OPC=movswq_r64_r16   
  movl %r10d, %r13d    #  2     0x4  3      OPC=movl_r32_r32     
  cmovngl %r13d, %ebx  #  3     0x7  4      OPC=cmovngl_r32_r32  
  retq                 #  4     0xb  1      OPC=retq             
                                                                 
.size target, .-target
