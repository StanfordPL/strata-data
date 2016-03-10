  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x40, %rdx                   #  1     0     10     OPC=movq_r64_imm64  
  callq .move_064_032_rdx_r10d_r11d  #  2     0xa   5      OPC=callq_label     
  movzbq %cl, %r10                   #  3     0xf   4      OPC=movzbq_r64_r8   
  movsbq %bl, %rcx                   #  4     0x13  4      OPC=movsbq_r64_r8   
  callq .move_008_016_r10b_r11b_bx   #  5     0x17  5      OPC=callq_label     
  retq                               #  6     0x1c  1      OPC=retq            
                                                                               
.size target, .-target
