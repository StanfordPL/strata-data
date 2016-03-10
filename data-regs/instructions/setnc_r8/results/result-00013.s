  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode            
.target:                           #        0     0      OPC=<label>       
  callq .read_cf_into_rcx          #  1     0     5      OPC=callq_label   
  callq .move_064_032_rcx_r8d_r9d  #  2     0x5   5      OPC=callq_label   
  salb $0x1, %r8b                  #  3     0xa   3      OPC=salb_r8_one   
  callq .read_zf_into_rcx          #  4     0xd   5      OPC=callq_label   
  movq %rcx, %rbx                  #  5     0x12  3      OPC=movq_r64_r64  
  retq                             #  6     0x15  1      OPC=retq          
                                                                           
.size target, .-target
