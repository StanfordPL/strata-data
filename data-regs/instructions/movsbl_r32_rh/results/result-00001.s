  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x8, %rbx   #  1     0     10     OPC=movq_r64_imm64  
  movsbw %ah, %bx   #  2     0xa   4      OPC=movsbw_r16_rh   
  movswl %bx, %edx  #  3     0xe   3      OPC=movswl_r32_r16  
  xchgl %ebx, %edx  #  4     0x11  2      OPC=xchgl_r32_r32   
  retq              #  5     0x13  1      OPC=retq            
                                                              
.size target, .-target
