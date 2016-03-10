  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode             
.target:                           #        0     0      OPC=<label>        
  movzbl %bh, %ecx                 #  1     0     3      OPC=movzbl_r32_rh  
  callq .move_064_032_rcx_r8d_r9d  #  2     0x3   5      OPC=callq_label    
  movsbq %r8b, %r11                #  3     0x8   4      OPC=movsbq_r64_r8  
  movsbq %r11b, %rax               #  4     0xc   4      OPC=movsbq_r64_r8  
  xchgl %eax, %r8d                 #  5     0x10  3      OPC=xchgl_r32_r32  
  xaddb %ah, %al                   #  6     0x13  3      OPC=xaddb_r8_rh    
  retq                             #  7     0x16  1      OPC=retq           
                                                                            
.size target, .-target
