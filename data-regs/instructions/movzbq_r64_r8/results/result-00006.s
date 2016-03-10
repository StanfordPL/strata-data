  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x80, %r10                   #  1     0     10     OPC=movq_r64_imm64  
  movsbl %cl, %ecx                   #  2     0xa   3      OPC=movsbl_r32_r8   
  callq .move_016_008_cx_r10b_r11b   #  3     0xd   5      OPC=callq_label     
  movslq %r10d, %rdx                 #  4     0x12  3      OPC=movslq_r64_r32  
  callq .move_064_032_rdx_r12d_r13d  #  5     0x15  5      OPC=callq_label     
  callq .move_032_064_r12d_r13d_rbx  #  6     0x1a  5      OPC=callq_label     
  retq                               #  7     0x1f  1      OPC=retq            
                                                                               
.size target, .-target
