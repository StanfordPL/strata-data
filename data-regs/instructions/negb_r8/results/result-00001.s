  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  movsbq %bl, %rcx                   #  1     0     4      OPC=movsbq_r64_r8  
  callq .move_064_032_rcx_r12d_r13d  #  2     0x4   5      OPC=callq_label    
  callq .move_032_064_r12d_r13d_rbx  #  3     0x9   5      OPC=callq_label    
  negw %bx                           #  4     0xe   3      OPC=negw_r16       
  decb %cl                           #  5     0x11  2      OPC=decb_r8        
  callq .set_szp_for_bl              #  6     0x13  5      OPC=callq_label    
  retq                               #  7     0x18  1      OPC=retq           
                                                                              
.size target, .-target
