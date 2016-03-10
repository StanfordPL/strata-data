  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  xorq %rax, %rax          #  1     0    3      OPC=xorq_r64_r64  
  callq .read_cf_into_rcx  #  2     0x3  5      OPC=callq_label   
  adcl %ecx, %eax          #  3     0x8  2      OPC=adcl_r32_r32  
  retq                     #  4     0xa  1      OPC=retq          
                                                                  
.size target, .-target
