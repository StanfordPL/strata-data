  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                 #  Line  RIP   Bytes  Opcode               
.target:               #        0     0      OPC=<label>          
  movq $0x8, %rsi      #  1     0     10     OPC=movq_r64_imm64   
  xchgq %rbx, %rax     #  2     0xa   2      OPC=xchgq_rax_r64    
  popcntl %ebx, %r14d  #  3     0xc   5      OPC=popcntl_r32_r32  
  rclw $0x1, %si       #  4     0x11  4      OPC=rclw_r16_one     
  cmovsw %si, %bx      #  5     0x15  4      OPC=cmovsw_r16_r16   
  retq                 #  6     0x19  1      OPC=retq             
                                                                  
.size target, .-target
