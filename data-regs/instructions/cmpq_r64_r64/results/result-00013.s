  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  xorq %rax, %rax   #  1     0     3      OPC=xorq_r64_r64    
  movq $0x3, %rbp   #  2     0x3   10     OPC=movq_r64_imm64  
  xaddl %ebp, %eax  #  3     0xd   3      OPC=xaddl_r32_r32   
  xorq %rdi, %rdi   #  4     0x10  3      OPC=xorq_r64_r64    
  adcb %ah, %bh     #  5     0x13  2      OPC=adcb_rh_rh      
  subq %rcx, %rbx   #  6     0x15  3      OPC=subq_r64_r64    
  retq              #  7     0x18  1      OPC=retq            
                                                              
.size target, .-target
