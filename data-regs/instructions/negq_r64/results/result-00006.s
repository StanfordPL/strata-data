  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  xorq %rax, %rax     #  1     0    3      OPC=xorq_r64_r64     
  subq %rbx, %rax     #  2     0x3  3      OPC=subq_r64_r64     
  movzbl %ah, %ebx    #  3     0x6  3      OPC=movzbl_r32_rh    
  cmovnel %eax, %ebx  #  4     0x9  3      OPC=cmovnel_r32_r32  
  xchgq %rbx, %rax    #  5     0xc  3      OPC=xchgq_r64_r64    
  retq                #  6     0xf  1      OPC=retq             
                                                                
.size target, .-target
