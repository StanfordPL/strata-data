  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_zf_into_rcx  #  1     0     5      OPC=callq_label   
  movq %rcx, %rax          #  2     0x5   3      OPC=movq_r64_r64  
  decb %al                 #  3     0x8   2      OPC=decb_r8       
  callq .clear_cf          #  4     0xa   5      OPC=callq_label   
  rcll $0x1, %eax          #  5     0xf   2      OPC=rcll_r32_one  
  retq                     #  6     0x11  1      OPC=retq          
                                                                   
.size target, .-target
