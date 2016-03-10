  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movswq %ax, %rbx                   #  1     0     4      OPC=movswq_r64_r16  
  callq .move_064_032_rbx_r10d_r11d  #  2     0x4   5      OPC=callq_label     
  callq .move_008_016_r10b_r11b_dx   #  3     0x9   5      OPC=callq_label     
  xchgw %r11w, %dx                   #  4     0xe   4      OPC=xchgw_r16_r16   
  retq                               #  5     0x12  1      OPC=retq            
                                                                               
.size target, .-target
