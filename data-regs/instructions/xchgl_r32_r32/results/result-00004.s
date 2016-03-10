  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_032_016_ebx_r10w_r11w  #  1     0     5      OPC=callq_label     
  movq $0x1, %rbx                    #  2     0x5   10     OPC=movq_r64_imm64  
  callq .move_032_016_ecx_r12w_r13w  #  3     0xf   5      OPC=callq_label     
  movsbl %r12b, %ecx                 #  4     0x14  4      OPC=movsbl_r32_r8   
  callq .move_016_032_r12w_r13w_ebx  #  5     0x18  5      OPC=callq_label     
  callq .move_016_032_r10w_r11w_ecx  #  6     0x1d  5      OPC=callq_label     
  retq                               #  7     0x22  1      OPC=retq            
                                                                               
.size target, .-target
