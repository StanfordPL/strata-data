  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movswq %ax, %rdx                   #  1     0     4      OPC=movswq_r64_r16  
  callq .move_064_032_rdx_r10d_r11d  #  2     0x4   5      OPC=callq_label     
  callq .move_032_016_edx_r8w_r9w    #  3     0x9   5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_dx     #  4     0xe   5      OPC=callq_label     
  callq .move_008_016_r10b_r11b_bx   #  5     0x13  5      OPC=callq_label     
  xchgb %bh, %dl                     #  6     0x18  2      OPC=xchgb_r8_rh     
  retq                               #  7     0x1a  1      OPC=retq            
                                                                               
.size target, .-target
