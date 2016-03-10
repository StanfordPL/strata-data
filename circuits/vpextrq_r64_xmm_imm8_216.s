  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  movq $0xfffffffffffffffa, %rbx    #  1     0     10     OPC=movq_r64_imm64   
  callq .move_128_064_xmm1_r10_r11  #  2     0xa   5      OPC=callq_label      
  shlw $0x1, %bx                    #  3     0xf   3      OPC=shlw_r16_one     
  cmovleq %r10, %rbx                #  4     0x12  4      OPC=cmovleq_r64_r64  
  retq                              #  5     0x16  1      OPC=retq             
                                                                               
.size target, .-target
