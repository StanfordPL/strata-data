  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  rolq $0x1, %rax   #  1     0     3      OPC=rolq_r64_one    
  rorb $0x1, %al    #  2     0x3   2      OPC=rorb_r8_one     
  orq %rax, %rax    #  3     0x5   3      OPC=orq_r64_r64     
  cbtw              #  4     0x8   2      OPC=cbtw            
  movswq %ax, %rdx  #  5     0xa   4      OPC=movswq_r64_r16  
  cwtd              #  6     0xe   2      OPC=cwtd            
  retq              #  7     0x10  1      OPC=retq            
                                                              
.size target, .-target
