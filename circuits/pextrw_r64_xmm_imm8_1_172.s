  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  vmovaps %xmm1, %xmm2              #  1     0     4      OPC=vmovaps_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11  #  2     0x4   5      OPC=callq_label      
  movq $0x8, %rbx                   #  3     0x9   10     OPC=movq_r64_imm64   
  movw %r11w, %bx                   #  4     0x13  4      OPC=movw_r16_r16     
  retq                              #  5     0x17  1      OPC=retq             
                                                                               
.size target, .-target
