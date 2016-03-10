  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode           
.target:                             #        0    0      OPC=<label>      
  callq .move_064_032_rcx_r10d_r11d  #  1     0    5      OPC=callq_label  
  callq .move_032_064_r10d_r11d_rbx  #  2     0x5  5      OPC=callq_label  
  xchgb %dl, %cl                     #  3     0xa  2      OPC=xchgb_r8_r8  
  shrq %cl, %rbx                     #  4     0xc  3      OPC=shrq_r64_cl  
  retq                               #  5     0xf  1      OPC=retq         
                                                                           
.size target, .-target
