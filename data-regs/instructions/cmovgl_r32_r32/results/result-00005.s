  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  movzwl %bx, %esp     #  1     0    3      OPC=movzwl_r32_r16    
  cmovnll %ecx, %esp   #  2     0x3  3      OPC=cmovnll_r32_r32   
  cmovnlel %esp, %ebx  #  3     0x6  3      OPC=cmovnlel_r32_r32  
  retq                 #  4     0x9  1      OPC=retq              
                                                                  
.size target, .-target
