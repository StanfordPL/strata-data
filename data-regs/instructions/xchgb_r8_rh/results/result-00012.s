  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  movzbl %ah, %ecx                   #  1     0     3      OPC=movzbl_r32_rh  
  xaddb %ah, %bl                     #  2     0x3   3      OPC=xaddb_r8_rh    
  callq .move_064_032_rcx_r10d_r11d  #  3     0x6   5      OPC=callq_label    
  xaddb %r11b, %cl                   #  4     0xb   4      OPC=xaddb_r8_r8    
  movw %cx, %bx                      #  5     0xf   3      OPC=movw_r16_r16   
  retq                               #  6     0x12  1      OPC=retq           
                                                                              
.size target, .-target
