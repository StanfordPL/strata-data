  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movslq %ecx, %rax  #  1     0    3      OPC=movslq_r64_r32  
  setng %bpl         #  2     0x3  4      OPC=setng_r8        
  salb $0x1, %bpl    #  3     0x7  3      OPC=salb_r8_one     
  cmovpl %eax, %ebx  #  4     0xa  3      OPC=cmovpl_r32_r32  
  retq               #  5     0xd  1      OPC=retq            
                                                              
.size target, .-target
