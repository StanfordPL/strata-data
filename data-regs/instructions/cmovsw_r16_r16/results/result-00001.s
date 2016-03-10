  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode               
.target:             #        0    0      OPC=<label>          
  movzwq %bx, %r9    #  1     0    4      OPC=movzwq_r64_r16   
  cmovnsw %r9w, %cx  #  2     0x4  5      OPC=cmovnsw_r16_r16  
  movswl %cx, %ebx   #  3     0x9  3      OPC=movswl_r32_r16   
  retq               #  4     0xc  1      OPC=retq             
                                                               
.size target, .-target
