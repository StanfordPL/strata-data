  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x0, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_3_of_rbx_to_r8b  #  2     0xa   5      OPC=callq_label     
  callq .move_r8b_to_byte_4_of_rbx  #  3     0xf   5      OPC=callq_label     
  callq .move_128_064_xmm1_r8_r9    #  4     0x14  5      OPC=callq_label     
  xaddw %bx, %r8w                   #  5     0x19  5      OPC=xaddw_r16_r16   
  retq                              #  6     0x1e  1      OPC=retq            
                                                                              
.size target, .-target
