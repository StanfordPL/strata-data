  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  movsbl %bl, %ebx                   #  1     0     3      OPC=movsbl_r32_r8  
  callq .move_064_032_rbx_r8d_r9d    #  2     0x3   5      OPC=callq_label    
  callq .move_r8b_to_byte_3_of_rbx   #  3     0x8   5      OPC=callq_label    
  callq .move_r8b_to_byte_7_of_rbx   #  4     0xd   5      OPC=callq_label    
  callq .move_064_032_rbx_r12d_r13d  #  5     0x12  5      OPC=callq_label    
  xaddl %r12d, %r12d                 #  6     0x17  4      OPC=xaddl_r32_r32  
  adcb %bl, %bl                      #  7     0x1b  2      OPC=adcb_r8_r8     
  retq                               #  8     0x1d  1      OPC=retq           
                                                                              
.size target, .-target
