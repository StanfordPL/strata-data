  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorq %rax, %rax   #  1     0    3      OPC=xorq_r64_r64   
  xaddl %eax, %ebx  #  2     0x3  3      OPC=xaddl_r32_r32  
  sbbl %ecx, %ebx   #  3     0x6  2      OPC=sbbl_r32_r32   
  retq              #  4     0x8  1      OPC=retq           
                                                            
.size target, .-target
