  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_zf_into_rcx  #  1     0     5      OPC=callq_label      
  rcll $0x1, %ecx          #  2     0x5   2      OPC=rcll_r32_one     
  popcntq %rcx, %rsi       #  3     0x7   5      OPC=popcntq_r64_r64  
  callq .read_zf_into_rbx  #  4     0xc   5      OPC=callq_label      
  retq                     #  5     0x11  1      OPC=retq             
                                                                      
.size target, .-target
