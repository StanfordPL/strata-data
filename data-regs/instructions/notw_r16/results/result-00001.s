  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movzwl %bx, %r9d                   #  1     0     4      OPC=movzwl_r32_r16  
  movzbl %bl, %r8d                   #  2     0x4   4      OPC=movzbl_r32_r8   
  callq .move_064_128_r8_r9_xmm1     #  3     0x8   5      OPC=callq_label     
  callq .move_byte_5_of_ymm1_to_r8b  #  4     0xd   5      OPC=callq_label     
  decw %r8w                          #  5     0x12  4      OPC=decw_r16        
  xorw %r8w, %bx                     #  6     0x16  4      OPC=xorw_r16_r16    
  retq                               #  7     0x1a  1      OPC=retq            
                                                                               
.size target, .-target
