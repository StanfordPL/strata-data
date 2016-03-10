  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP  Bytes  Opcode            
.target:                           #        0    0      OPC=<label>       
  callq .move_032_016_ebx_r8w_r9w  #  1     0    5      OPC=callq_label   
  rolw $0x1, %r9w                  #  2     0x5  4      OPC=rolw_r16_one  
  rcll $0x1, %ebx                  #  3     0x9  2      OPC=rcll_r32_one  
  retq                             #  4     0xb  1      OPC=retq          
                                                                          
.size target, .-target
