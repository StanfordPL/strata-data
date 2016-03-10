  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmovnzw %bx, %bx    #  1     0    4      OPC=cmovnzw_r16_r16  
  cmovnzl %ecx, %ebx  #  2     0x4  3      OPC=cmovnzl_r32_r32  
  retq                #  3     0x7  1      OPC=retq             
                                                                
.size target, .-target
