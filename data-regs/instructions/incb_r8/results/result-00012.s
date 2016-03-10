  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  xorq %rax, %rax  #  1     0     3      OPC=xorq_r64_r64    
  movq $0x1, %rsp  #  2     0x3   10     OPC=movq_r64_imm64  
  movq %rsp, %rax  #  3     0xd   3      OPC=movq_r64_r64    
  adcl %esp, %eax  #  4     0x10  2      OPC=adcl_r32_r32    
  adcb %spl, %bl   #  5     0x12  3      OPC=adcb_r8_r8      
  retq             #  6     0x15  1      OPC=retq            
                                                             
.size target, .-target
