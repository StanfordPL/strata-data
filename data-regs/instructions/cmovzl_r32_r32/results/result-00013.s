  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP  Bytes  Opcode              
.target:                             #        0    0      OPC=<label>         
  cmovel %ecx, %ebx                  #  1     0    3      OPC=cmovel_r32_r32  
  callq .move_064_032_rbx_r10d_r11d  #  2     0x3  5      OPC=callq_label     
  xchgb %r10b, %bl                   #  3     0x8  3      OPC=xchgb_r8_r8     
  retq                               #  4     0xb  1      OPC=retq            
                                                                              
.size target, .-target
