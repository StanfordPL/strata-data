  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64  
  callq .read_zf_into_rcx  #  2     0x3   5      OPC=callq_label   
  sall $0x1, %ecx          #  3     0x8   2      OPC=sall_r32_one  
  rclw $0x1, %bx           #  4     0xa   3      OPC=rclw_r16_one  
  callq .set_szp_for_bx    #  5     0xd   5      OPC=callq_label   
  retq                     #  6     0x12  1      OPC=retq          
                                                                   
.size target, .-target
