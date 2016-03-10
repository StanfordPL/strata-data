  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movslq %ebx, %r11  #  1     0    3      OPC=movslq_r64_r32  
  movq %r11, %rdi    #  2     0x3  3      OPC=movq_r64_r64    
  xchgw %di, %r11w   #  3     0x6  4      OPC=xchgw_r16_r16   
  sarq $0x1, %rdi    #  4     0xa  3      OPC=sarq_r64_one    
  movl %edi, %ebx    #  5     0xd  2      OPC=movl_r32_r32    
  retq               #  6     0xf  1      OPC=retq            
                                                              
.size target, .-target
