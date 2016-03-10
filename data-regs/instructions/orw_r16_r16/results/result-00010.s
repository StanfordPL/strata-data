  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswq %cx, %rax  #  1     0    4      OPC=movswq_r64_r16  
  movswq %bx, %rsi  #  2     0x4  4      OPC=movswq_r64_r16  
  orq %rax, %rsi    #  3     0x8  3      OPC=orq_r64_r64     
  movq %rsi, %rbx   #  4     0xb  3      OPC=movq_r64_r64    
  retq              #  5     0xe  1      OPC=retq            
                                                             
.size target, .-target
