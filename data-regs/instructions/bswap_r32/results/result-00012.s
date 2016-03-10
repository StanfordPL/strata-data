  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_032_016_ebx_r12w_r13w  #  1     0     5      OPC=callq_label    
  xchgb %bl, %bh                     #  2     0x5   2      OPC=xchgb_rh_r8    
  callq .move_016_008_bx_r10b_r11b   #  3     0x7   5      OPC=callq_label    
  movzbl %r10b, %r13d                #  4     0xc   4      OPC=movzbl_r32_r8  
  xchgw %r13w, %bx                   #  5     0x10  4      OPC=xchgw_r16_r16  
  callq .move_byte_2_of_rbx_to_r9b   #  6     0x14  5      OPC=callq_label    
  callq .move_byte_3_of_rbx_to_r8b   #  7     0x19  5      OPC=callq_label    
  negl %ebx                          #  8     0x1e  2      OPC=negl_r32       
  callq .move_016_032_r12w_r13w_ebx  #  9     0x20  5      OPC=callq_label    
  callq .move_008_016_r8b_r9b_bx     #  10    0x25  5      OPC=callq_label    
  retq                               #  11    0x2a  1      OPC=retq           
                                                                              
.size target, .-target
