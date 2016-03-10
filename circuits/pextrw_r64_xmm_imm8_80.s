  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x80, %rbx                  #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_064_xmm1_r10_r11  #  2     0xa   5      OPC=callq_label     
  xaddw %bx, %r10w                  #  3     0xf   5      OPC=xaddw_r16_r16   
  retq                              #  4     0x14  1      OPC=retq            
                                                                              
.size target, .-target
