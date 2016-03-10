  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  movl %ecx, %r9d      #  1     0    3      OPC=movl_r32_r32      
  cmovnael %r9d, %ebx  #  2     0x3  4      OPC=cmovnael_r32_r32  
  retq                 #  3     0x7  1      OPC=retq              
                                                                  
.size target, .-target
