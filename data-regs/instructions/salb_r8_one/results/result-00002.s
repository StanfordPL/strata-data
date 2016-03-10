  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  xorq %rax, %rax    #  1     0     3      OPC=xorq_r64_r64    
  salw $0x1, %ax     #  2     0x3   3      OPC=salw_r16_one    
  movslq %eax, %rdi  #  3     0x6   3      OPC=movslq_r64_r32  
  movb %bl, %al      #  4     0x9   2      OPC=movb_r8_r8      
  rolb $0x1, %dil    #  5     0xb   3      OPC=rolb_r8_one     
  adcb %al, %bl      #  6     0xe   2      OPC=adcb_r8_r8      
  retq               #  7     0x10  1      OPC=retq            
                                                               
.size target, .-target
