  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  callq .read_zf_into_rcx          #  1     0     5      OPC=callq_label     
  movq $0x0, %rbx                  #  2     0x5   10     OPC=movq_r64_imm64  
  callq .move_064_032_rbx_r8d_r9d  #  3     0xf   5      OPC=callq_label     
  movswq %bx, %r9                  #  4     0x14  4      OPC=movswq_r64_r16  
  callq .move_016_008_cx_r8b_r9b   #  5     0x18  5      OPC=callq_label     
  callq .move_016_032_r8w_r9w_ebx  #  6     0x1d  5      OPC=callq_label     
  retq                             #  7     0x22  1      OPC=retq            
                                                                             
.size target, .-target
