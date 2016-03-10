  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode               
.target:             #        0    0      OPC=<label>          
  movswl %cx, %r8d   #  1     0    4      OPC=movswl_r32_r16   
  cmovnbw %r8w, %bx  #  2     0x4  5      OPC=cmovnbw_r16_r16  
  retq               #  3     0x9  1      OPC=retq             
                                                               
.size target, .-target
