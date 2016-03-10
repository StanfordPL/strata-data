  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_032_016_ebx_r12w_r13w  #  1     0     5      OPC=callq_label      
  callq .move_016_032_r12w_r13w_edx  #  2     0x5   5      OPC=callq_label      
  negl %ebx                          #  3     0xa   2      OPC=negl_r32         
  callq .move_016_008_dx_r8b_r9b     #  4     0xc   5      OPC=callq_label      
  cmovnew %r13w, %bx                 #  5     0x11  5      OPC=cmovnew_r16_r16  
  callq .move_r8b_to_byte_3_of_rbx   #  6     0x16  5      OPC=callq_label      
  callq .move_r9b_to_byte_2_of_rbx   #  7     0x1b  5      OPC=callq_label      
  xchgb %bh, %bl                     #  8     0x20  2      OPC=xchgb_r8_rh      
  retq                               #  9     0x22  1      OPC=retq             
                                                                                
.size target, .-target
