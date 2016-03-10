  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  xorl %ebx, %ebx                                 #  2     0x5   2      OPC=xorl_r32_r32     
  movq %xmm9, %r9                                 #  3     0x7   5      OPC=movq_r64_xmm     
  cmovlew %r9w, %bx                               #  4     0xc   5      OPC=cmovlew_r16_r16  
  retq                                            #  5     0x11  1      OPC=retq             
                                                                                             
.size target, .-target
