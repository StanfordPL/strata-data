  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movswl %cx, %r8d   #  1     0    4      OPC=movswl_r32_r16  
  callq .set_of      #  2     0x4  5      OPC=callq_label     
  cmovll %r8d, %ebx  #  3     0x9  4      OPC=cmovll_r32_r32  
  retq               #  4     0xd  1      OPC=retq            
                                                              
.size target, .-target
