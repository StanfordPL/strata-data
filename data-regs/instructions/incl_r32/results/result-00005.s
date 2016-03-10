  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  xorq %rax, %rax          #  1     0    3      OPC=xorq_r64_r64  
  callq .read_zf_into_rcx  #  2     0x3  5      OPC=callq_label   
  clc                      #  3     0x8  1      OPC=clc           
  adcl %ecx, %ebx          #  4     0x9  2      OPC=adcl_r32_r32  
  retq                     #  5     0xb  1      OPC=retq          
                                                                  
.size target, .-target
