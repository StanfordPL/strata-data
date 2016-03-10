  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswq %bx, %rbx  #  1     0    4      OPC=movswq_r64_r16  
  movswq %cx, %rdx  #  2     0x4  4      OPC=movswq_r64_r16  
  xorq %rdx, %rbx   #  3     0x8  3      OPC=xorq_r64_r64    
  retq              #  4     0xb  1      OPC=retq            
                                                             
.size target, .-target
