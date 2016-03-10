  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movdqa %xmm1, %xmm3               #  1     0     4      OPC=movdqa_xmm_xmm  
  movq $0x20, %rbx                  #  2     0x4   10     OPC=movq_r64_imm64  
  callq .move_128_064_xmm3_r10_r11  #  3     0xe   5      OPC=callq_label     
  xaddw %bx, %r11w                  #  4     0x13  5      OPC=xaddw_r16_r16   
  retq                              #  5     0x18  1      OPC=retq            
                                                                              
.size target, .-target
