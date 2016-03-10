  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  movl %ebx, %r8d                    #  1     0     3      OPC=movl_r32_r32   
  callq .move_r8b_to_byte_6_of_ymm1  #  2     0x3   5      OPC=callq_label    
  movzbl %bh, %ecx                   #  3     0x8   3      OPC=movzbl_r32_rh  
  callq .move_032_016_ecx_r8w_r9w    #  4     0xb   5      OPC=callq_label    
  callq .move_r8b_to_byte_7_of_ymm1  #  5     0x10  5      OPC=callq_label    
  retq                               #  6     0x15  1      OPC=retq           
                                                                              
.size target, .-target
