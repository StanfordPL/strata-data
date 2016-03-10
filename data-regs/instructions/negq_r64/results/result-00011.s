  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorq %rax, %rax   #  1     0    3      OPC=xorq_r64_r64   
  subq %rbx, %rax   #  2     0x3  3      OPC=subq_r64_r64   
  xchgq %rax, %rbx  #  3     0x6  2      OPC=xchgq_r64_rax  
  retq              #  4     0x8  1      OPC=retq           
                                                            
.size target, .-target
