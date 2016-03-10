  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode             
.target:                           #        0     0      OPC=<label>        
  movzbl %cl, %ebx                 #  1     0     3      OPC=movzbl_r32_r8  
  callq .move_064_032_rbx_r8d_r9d  #  2     0x3   5      OPC=callq_label    
  movsbl %ch, %ebx                 #  3     0x8   3      OPC=movsbl_r32_rh  
  xaddl %ebx, %r9d                 #  4     0xb   4      OPC=xaddl_r32_r32  
  callq .move_008_016_r8b_r9b_bx   #  5     0xf   5      OPC=callq_label    
  retq                             #  6     0x14  1      OPC=retq           
                                                                            
.size target, .-target
