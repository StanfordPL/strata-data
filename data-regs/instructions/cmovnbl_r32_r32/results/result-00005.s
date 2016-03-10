  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode               
.target:                           #        0     0      OPC=<label>          
  cmovael %ecx, %ebx               #  1     0     3      OPC=cmovael_r32_r32  
  callq .move_064_032_rbx_r8d_r9d  #  2     0x3   5      OPC=callq_label      
  salb $0x1, %r9b                  #  3     0x8   3      OPC=salb_r8_one      
  movl %ecx, %edx                  #  4     0xb   2      OPC=movl_r32_r32     
  cmovzw %dx, %r9w                 #  5     0xd   5      OPC=cmovzw_r16_r16   
  cmovnzw %r9w, %bx                #  6     0x12  5      OPC=cmovnzw_r16_r16  
  retq                             #  7     0x17  1      OPC=retq             
                                                                              
.size target, .-target
