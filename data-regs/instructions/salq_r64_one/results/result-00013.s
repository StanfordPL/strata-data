  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64  
  callq .read_of_into_rcx  #  2     0x3   5      OPC=callq_label   
  xaddb %cl, %bh           #  3     0x8   3      OPC=xaddb_rh_r8   
  rolw $0x1, %ax           #  4     0xb   3      OPC=rolw_r16_one  
  xaddb %al, %bl           #  5     0xe   3      OPC=xaddb_r8_r8   
  addq %rbx, %rbx          #  6     0x11  3      OPC=addq_r64_r64  
  retq                     #  7     0x14  1      OPC=retq          
                                                                   
.size target, .-target
