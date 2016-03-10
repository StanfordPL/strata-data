  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %al, %ebx  #  1     0    3      OPC=movsbl_r32_r8  
  movsbq %bl, %rax  #  2     0x3  4      OPC=movsbq_r64_r8  
  retq              #  3     0x7  1      OPC=retq           
                                                            
.size target, .-target
