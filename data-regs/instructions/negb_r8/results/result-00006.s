  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP   Bytes  Opcode              
.target:                 #        0     0      OPC=<label>         
  movsbq %bl, %rsi       #  1     0     4      OPC=movsbq_r64_r8   
  movsbl %sil, %eax      #  2     0x4   4      OPC=movsbl_r32_r8   
  movsbl %bl, %ebx       #  3     0x8   3      OPC=movsbl_r32_r8   
  negw %bx               #  4     0xb   3      OPC=negw_r16        
  movzwl %bx, %r15d      #  5     0xe   4      OPC=movzwl_r32_r16  
  xaddb %r15b, %al       #  6     0x12  4      OPC=xaddb_r8_r8     
  callq .set_szp_for_bl  #  7     0x16  5      OPC=callq_label     
  retq                   #  8     0x1b  1      OPC=retq            
                                                                   
.size target, .-target
