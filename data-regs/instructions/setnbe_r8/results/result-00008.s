  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_zf_into_rcx  #  1     0    5      OPC=callq_label   
  rcll $0x1, %ecx          #  2     0x5  2      OPC=rcll_r32_one  
  shll $0x1, %ecx          #  3     0x7  2      OPC=shll_r32_one  
  callq .read_zf_into_rbx  #  4     0x9  5      OPC=callq_label   
  retq                     #  5     0xe  1      OPC=retq          
                                                                  
.size target, .-target
