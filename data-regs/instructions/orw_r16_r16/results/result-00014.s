  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movswq %cx, %rsi   #  1     0     4      OPC=movswq_r64_r16  
  movswq %bx, %r12   #  2     0x4   4      OPC=movswq_r64_r16  
  orq %r12, %rsi     #  3     0x8   3      OPC=orq_r64_r64     
  cmovew %si, %si    #  4     0xb   4      OPC=cmovew_r16_r16  
  movslq %esi, %rbx  #  5     0xf   3      OPC=movslq_r64_r32  
  retq               #  6     0x12  1      OPC=retq            
                                                               
.size target, .-target
