  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movswq %cx, %r9     #  1     0     4      OPC=movswq_r64_r16   
  movswl %bx, %r11d   #  2     0x4   4      OPC=movswl_r32_r16   
  orl %r9d, %r11d     #  3     0x8   3      OPC=orl_r32_r32      
  cmovnzw %r11w, %bx  #  4     0xb   5      OPC=cmovnzw_r16_r16  
  retq                #  5     0x10  1      OPC=retq             
                                                                 
.size target, .-target
