  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movswl %cx, %eax   #  1     0     3      OPC=movswl_r32_r16  
  movzbq %cl, %rdx   #  2     0x3   4      OPC=movzbq_r64_r8   
  sete %dl           #  3     0x7   3      OPC=sete_r8         
  cltq               #  4     0xa   2      OPC=cltq            
  salw $0x1, %dx     #  5     0xc   3      OPC=salw_r16_one    
  cmoveq %rax, %rbx  #  6     0xf   4      OPC=cmoveq_r64_r64  
  retq               #  7     0x13  1      OPC=retq            
                                                               
.size target, .-target
