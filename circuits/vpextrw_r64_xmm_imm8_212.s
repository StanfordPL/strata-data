  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  movq $0xd4, %rbx                              #  1     0     10     OPC=movq_r64_imm64   
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0xa   5      OPC=callq_label      
  popcntw %r11w, %ax                            #  3     0xf   6      OPC=popcntw_r16_r16  
  cmovnbw %r12w, %bx                            #  4     0x15  5      OPC=cmovnbw_r16_r16  
  retq                                          #  5     0x1a  1      OPC=retq             
                                                                                           
.size target, .-target
