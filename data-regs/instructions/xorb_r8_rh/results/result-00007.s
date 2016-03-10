  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  movzbl %ah, %eax         #  1     0     3      OPC=movzbl_r32_rh  
  movsbl %bl, %r11d        #  2     0x3   4      OPC=movsbl_r32_r8  
  xorq %r11, %rax          #  3     0x7   3      OPC=xorq_r64_r64   
  callq .read_cf_into_rbx  #  4     0xa   5      OPC=callq_label    
  xaddb %bl, %al           #  5     0xf   3      OPC=xaddb_r8_r8    
  retq                     #  6     0x12  1      OPC=retq           
                                                                    
.size target, .-target
