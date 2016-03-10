  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  cmpw %bx, %ax     #  1     0    3      OPC=cmpw_r16_r16     
  movswl %bx, %eax  #  2     0x3  3      OPC=movswl_r32_r16   
  cmovgew %cx, %bx  #  3     0x6  4      OPC=cmovgew_r16_r16  
  cmovnzw %ax, %bx  #  4     0xa  4      OPC=cmovnzw_r16_r16  
  retq              #  5     0xe  1      OPC=retq             
                                                              
.size target, .-target
