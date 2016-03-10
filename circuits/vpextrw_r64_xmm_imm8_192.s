  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  movq $0x0, %rbx                   #  1     0     10     OPC=movq_r64_imm64   
  callq .move_128_064_xmm1_r10_r11  #  2     0xa   5      OPC=callq_label      
  decw %bx                          #  3     0xf   3      OPC=decw_r16         
  cmovnzw %r10w, %bx                #  4     0x12  5      OPC=cmovnzw_r16_r16  
  retq                              #  5     0x17  1      OPC=retq             
                                                                               
.size target, .-target
