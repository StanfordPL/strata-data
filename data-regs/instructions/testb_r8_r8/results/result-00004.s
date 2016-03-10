  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbq %cl, %rcx  #  1     0    4      OPC=movsbq_r64_r8  
  movsbq %bl, %rdi  #  2     0x4  4      OPC=movsbq_r64_r8  
  testl %edi, %ecx  #  3     0x8  2      OPC=testl_r32_r32  
  retq              #  4     0xa  1      OPC=retq           
                                                            
.size target, .-target
