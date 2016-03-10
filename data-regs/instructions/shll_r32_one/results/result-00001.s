  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode            
.target:                           #        0     0      OPC=<label>       
  callq .move_032_016_ebx_r8w_r9w  #  1     0     5      OPC=callq_label   
  callq .move_016_032_r8w_r9w_edx  #  2     0x5   5      OPC=callq_label   
  callq .move_016_032_r8w_r9w_ebx  #  3     0xa   5      OPC=callq_label   
  xorq %rax, %rax                  #  4     0xf   3      OPC=xorq_r64_r64  
  adcl %ebx, %edx                  #  5     0x12  2      OPC=adcl_r32_r32  
  clc                              #  6     0x14  1      OPC=clc           
  rcll $0x1, %ebx                  #  7     0x15  2      OPC=rcll_r32_one  
  retq                             #  8     0x17  1      OPC=retq          
                                                                           
.size target, .-target
