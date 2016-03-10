  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .move_128_064_xmm1_r8_r9     #  1     0     5      OPC=callq_label   
  callq .move_064_128_r8_r9_xmm3     #  2     0x5   5      OPC=callq_label   
  callq .move_128_064_xmm3_r10_r11   #  3     0xa   5      OPC=callq_label   
  xorq %r9, %r11                     #  4     0xf   3      OPC=xorq_r64_r64  
  callq .move_032_064_r10d_r11d_rbx  #  5     0x12  5      OPC=callq_label   
  retq                               #  6     0x17  1      OPC=retq          
                                                                             
.size target, .-target
