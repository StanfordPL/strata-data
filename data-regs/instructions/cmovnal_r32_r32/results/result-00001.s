  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  seta %r15b                         #  1     0     4      OPC=seta_r8         
  negb %r15b                         #  2     0x4   3      OPC=negb_r8         
  movslq %ecx, %rdx                  #  3     0x7   3      OPC=movslq_r64_r32  
  callq .move_064_032_rdx_r10d_r11d  #  4     0xa   5      OPC=callq_label     
  cmovel %r10d, %ebx                 #  5     0xf   4      OPC=cmovel_r32_r32  
  retq                               #  6     0x13  1      OPC=retq            
                                                                               
.size target, .-target
