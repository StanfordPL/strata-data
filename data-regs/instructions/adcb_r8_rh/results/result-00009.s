  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movzbl %ah, %ebp   #  1     0    3      OPC=movzbl_r32_rh   
  adcb %bl, %bpl     #  2     0x3  3      OPC=adcb_r8_r8      
  movslq %ebp, %rax  #  3     0x6  3      OPC=movslq_r64_r32  
  movzbq %al, %rbx   #  4     0x9  4      OPC=movzbq_r64_r8   
  retq               #  5     0xd  1      OPC=retq            
                                                              
.size target, .-target
