  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movswq %cx, %rdx   #  1     0    4      OPC=movswq_r64_r16  
  movw %bx, %r8w     #  2     0x4  4      OPC=movw_r16_r16    
  movswl %r8w, %ebp  #  3     0x8  4      OPC=movswl_r32_r16  
  testl %ebp, %edx   #  4     0xc  2      OPC=testl_r32_r32   
  retq               #  5     0xe  1      OPC=retq            
                                                              
.size target, .-target
