  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode              
.target:                                          #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label     
  callq .move_128_256_xmm10_xmm11_ymm1            #  2     0x5   5      OPC=callq_label     
  callq .move_byte_3_of_ymm1_to_r8b               #  3     0xa   5      OPC=callq_label     
  movq $0x0, %rbx                                 #  4     0xf   10     OPC=movq_r64_imm64  
  movzbl %r8b, %ecx                               #  5     0x19  4      OPC=movzbl_r32_r8   
  xaddb %bl, %cl                                  #  6     0x1d  3      OPC=xaddb_r8_r8     
  retq                                            #  7     0x20  1      OPC=retq            
                                                                                            
.size target, .-target
