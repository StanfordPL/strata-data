  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode              
.target:                                          #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label     
  movq $0x4, %rbx                                 #  2     0x5   10     OPC=movq_r64_imm64  
  callq .move_64_128_xmm10_xmm11_xmm3             #  3     0xf   5      OPC=callq_label     
  callq .move_128_064_xmm3_r8_r9                  #  4     0x14  5      OPC=callq_label     
  xaddw %bx, %r9w                                 #  5     0x19  5      OPC=xaddw_r16_r16   
  retq                                            #  6     0x1e  1      OPC=retq            
                                                                                            
.size target, .-target
