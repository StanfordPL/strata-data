  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movzwq %bx, %r14    #  1     0    4      OPC=movzwq_r64_r16  
  movswl %cx, %r11d   #  2     0x4  4      OPC=movswl_r32_r16  
  movswl %r14w, %ebx  #  3     0x8  4      OPC=movswl_r32_r16  
  testl %r11d, %ebx   #  4     0xc  3      OPC=testl_r32_r32   
  retq                #  5     0xf  1      OPC=retq            
                                                               
.size target, .-target
