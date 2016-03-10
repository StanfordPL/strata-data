  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode            
.target:                           #        0     0      OPC=<label>       
  callq .move_032_016_ebx_r8w_r9w  #  1     0     5      OPC=callq_label   
  xorq %rax, %rax                  #  2     0x5   3      OPC=xorq_r64_r64  
  callq .read_sf_into_rcx          #  3     0x8   5      OPC=callq_label   
  rolq $0x1, %rcx                  #  4     0xd   3      OPC=rolq_r64_one  
  rclw $0x1, %r9w                  #  5     0x10  4      OPC=rclw_r16_one  
  rcll $0x1, %ebx                  #  6     0x14  2      OPC=rcll_r32_one  
  retq                             #  7     0x16  1      OPC=retq          
                                                                           
.size target, .-target
