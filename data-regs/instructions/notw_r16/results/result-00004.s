  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0xfffffffffffffffc, %rcx     #  1     0     10     OPC=movq_r64_imm64  
  callq .move_064_032_rcx_r10d_r11d  #  2     0xa   5      OPC=callq_label     
  xorw %r11w, %bx                    #  3     0xf   4      OPC=xorw_r16_r16    
  retq                               #  4     0x13  1      OPC=retq            
                                                                               
.size target, .-target
