  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_016_008_bx_r8b_r9b     #  1     0     5      OPC=callq_label    
  callq .move_032_016_ebx_r10w_r11w  #  2     0x5   5      OPC=callq_label    
  callq .move_008_016_r10b_r11b_bx   #  3     0xa   5      OPC=callq_label    
  callq .move_r9b_to_byte_2_of_rbx   #  4     0xf   5      OPC=callq_label    
  xorq %rdi, %rdi                    #  5     0x14  3      OPC=xorq_r64_r64   
  callq .move_byte_3_of_rbx_to_r9b   #  6     0x17  5      OPC=callq_label    
  xaddl %edi, %ebx                   #  7     0x1c  3      OPC=xaddl_r32_r32  
  xaddb %bl, %r9b                    #  8     0x1f  4      OPC=xaddb_r8_r8    
  callq .move_r8b_to_byte_3_of_rbx   #  9     0x23  5      OPC=callq_label    
  retq                               #  10    0x28  1      OPC=retq           
                                                                              
.size target, .-target
