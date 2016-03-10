  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  movl %ebx, %r8d      #  1     0    3      OPC=movl_r32_r32      
  cmovnel %ecx, %ebx   #  2     0x3  3      OPC=cmovnel_r32_r32   
  cmovngel %r8d, %ebx  #  3     0x6  4      OPC=cmovngel_r32_r32  
  retq                 #  4     0xa  1      OPC=retq              
                                                                  
.size target, .-target
