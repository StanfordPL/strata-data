  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode               
.target:             #        0    0      OPC=<label>          
  cmoval %ebx, %ecx  #  1     0    3      OPC=cmoval_r32_r32   
  cmovnew %cx, %cx   #  2     0x3  4      OPC=cmovnew_r16_r16  
  cmovzw %cx, %bx    #  3     0x7  4      OPC=cmovzw_r16_r16   
  xchgl %ecx, %ebx   #  4     0xb  2      OPC=xchgl_r32_r32    
  retq               #  5     0xd  1      OPC=retq             
                                                               
.size target, .-target
