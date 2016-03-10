  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_016_008_cx_r8b_r9b    #  1     0     5      OPC=callq_label    
  movsbl %r9b, %ecx                 #  2     0x5   4      OPC=movsbl_r32_r8  
  callq .move_008_016_r8b_r9b_dx    #  3     0x9   5      OPC=callq_label    
  callq .move_016_008_dx_r12b_r13b  #  4     0xe   5      OPC=callq_label    
  decw %cx                          #  5     0x13  3      OPC=decw_r16       
  callq .read_pf_into_rbx           #  6     0x16  5      OPC=callq_label    
  callq .move_008_016_r12b_r13b_cx  #  7     0x1b  5      OPC=callq_label    
  callq .move_008_016_r8b_r9b_bx    #  8     0x20  5      OPC=callq_label    
  xchgl %ebx, %ecx                  #  9     0x25  2      OPC=xchgl_r32_r32  
  retq                              #  10    0x27  1      OPC=retq           
                                                                             
.size target, .-target
