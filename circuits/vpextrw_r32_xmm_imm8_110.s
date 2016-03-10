  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  movq $0x20, %rbx                              #  1     0     10     OPC=movq_r64_imm64   
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0xa   5      OPC=callq_label      
  vmovups %xmm7, %xmm3                          #  3     0xf   4      OPC=vmovups_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11              #  4     0x13  5      OPC=callq_label      
  xaddw %bx, %r10w                              #  5     0x18  5      OPC=xaddw_r16_r16    
  retq                                          #  6     0x1d  1      OPC=retq             
                                                                                           
.size target, .-target
