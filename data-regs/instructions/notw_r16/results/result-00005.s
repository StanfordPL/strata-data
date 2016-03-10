  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %rcx   #  1     0     10     OPC=movq_r64_imm64  
  callq .move_064_032_rcx_r8d_r9d  #  2     0xa   5      OPC=callq_label     
  xorw %bx, %r8w                   #  3     0xf   4      OPC=xorw_r16_r16    
  movw %r8w, %bx                   #  4     0x13  4      OPC=movw_r16_r16    
  retq                             #  5     0x17  1      OPC=retq            
                                                                             
.size target, .-target
