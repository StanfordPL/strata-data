  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorq %rax, %rax   #  1     0    3      OPC=xorq_r64_r64   
  xaddl %ebx, %eax  #  2     0x3  3      OPC=xaddl_r32_r32  
  cltq              #  3     0x6  2      OPC=cltq           
  sarq $0x1, %rax   #  4     0x8  3      OPC=sarq_r64_one   
  xchgl %eax, %ebx  #  5     0xb  2      OPC=xchgl_r32_r32  
  retq              #  6     0xd  1      OPC=retq           
                                                            
.size target, .-target
