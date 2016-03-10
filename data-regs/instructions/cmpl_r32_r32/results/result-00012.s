  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode            
.target:            #        0    0      OPC=<label>       
  movl %ebx, %r10d  #  1     0    3      OPC=movl_r32_r32  
  subl %ecx, %r10d  #  2     0x3  3      OPC=subl_r32_r32  
  retq              #  3     0x6  1      OPC=retq          
                                                           
.size target, .-target
