  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP  Bytes  Opcode            
.target:                           #        0    0      OPC=<label>       
  callq .move_064_032_rbx_r8d_r9d  #  1     0    5      OPC=callq_label   
  shlb $0x1, %r8b                  #  2     0x5  3      OPC=shlb_r8_one   
  rcll $0x1, %r9d                  #  3     0x8  3      OPC=rcll_r32_one  
  adcq %rbx, %rbx                  #  4     0xb  3      OPC=adcq_r64_r64  
  retq                             #  5     0xe  1      OPC=retq          
                                                                          
.size target, .-target
