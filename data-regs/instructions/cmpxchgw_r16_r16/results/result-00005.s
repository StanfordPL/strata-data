  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode               
.target:             #        0    0      OPC=<label>          
  cmpw %bx, %ax      #  1     0    3      OPC=cmpw_r16_r16     
  movswl %cx, %edi   #  2     0x3  3      OPC=movswl_r32_r16   
  cmovnzw %bx, %ax   #  3     0x6  4      OPC=cmovnzw_r16_r16  
  cmovzq %rdi, %rbx  #  4     0xa  4      OPC=cmovzq_r64_r64   
  retq               #  5     0xe  1      OPC=retq             
                                                               
.size target, .-target
