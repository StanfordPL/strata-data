  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movswq %bx, %rbx                   #  1     0     4      OPC=movswq_r64_r16  
  callq .move_064_032_rbx_r10d_r11d  #  2     0x4   5      OPC=callq_label     
  callq .move_016_008_bx_r8b_r9b     #  3     0x9   5      OPC=callq_label     
  callq .move_r9b_to_byte_3_of_rbx   #  4     0xe   5      OPC=callq_label     
  callq .set_cf                      #  5     0x13  5      OPC=callq_label     
  rcll $0x1, %r10d                   #  6     0x18  3      OPC=rcll_r32_one    
  rcll $0x1, %ebx                    #  7     0x1b  2      OPC=rcll_r32_one    
  retq                               #  8     0x1d  1      OPC=retq            
                                                                               
.size target, .-target
