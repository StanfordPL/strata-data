  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  decl %ebx           #  1     0    2      OPC=decl_r32         
  incl %ebx           #  2     0x2  2      OPC=incl_r32         
  cmovael %ecx, %ebx  #  3     0x4  3      OPC=cmovael_r32_r32  
  retq                #  4     0x7  1      OPC=retq             
                                                                
.size target, .-target
